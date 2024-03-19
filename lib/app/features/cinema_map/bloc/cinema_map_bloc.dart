import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/center_dto.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/circle_dto.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/location_bias_dto.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/map_request_dto/map_request_dto.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/map_response_model.dart/map_response_model.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/place_response_model/place_response_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../api_call/api_repositories/api_repositories.dart';

part 'cinema_map_event.dart';
part 'cinema_map_state.dart';

class CinemaMapBloc extends Bloc<CinemaMapEvent, CinemaMapState> {
  final RemoteDataSource remoteDataSource;
  CinemaMapBloc(this.remoteDataSource) : super(const CinemaMapState()) {
    on<CinemaFetching>(_cinemaFetchingHandler);
    on<MapInitialize>(_mapInitializeHandler);
    on<MapMarkTapped>(_mapMarkerTapped);
  }

  final Set<Marker> mapMarkers = Set();
  GoogleMapController? controller;
  Location location = Location();
  LocationData? currentPosition;
  LatLng? initialCameraPosition;
  PlaceResponseModel? selectedPlace;

  _getLoc() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    try {
      await location.getLocation().then((value) {
        print(value);
      });
    } catch (e) {
      print(e.toString());
    }

    initialCameraPosition =
        LatLng(currentPosition?.latitude ?? 0, currentPosition?.longitude ?? 0);
    location.onLocationChanged.listen((LocationData currentLocation) {
      currentPosition = currentLocation;
      initialCameraPosition = LatLng(
        currentPosition?.latitude ?? 0,
        currentPosition?.longitude ?? 0,
      );
    });
  }

  Future<void> _cinemaFetchingHandler(
      CinemaFetching event, Emitter<CinemaMapState> emit) async {
    emit(state.copyWith(status: CinemaMapStatusX.loading));
    try {
      await _getLoc();

      MapRequestDto requestData = MapRequestDto(
        textQuery: "cinema",
        location: LocationBiasDto(
          circle: CircleDto(
            center: CenterDto(
              latitude: currentPosition?.latitude,
              longitude: currentPosition?.longitude,
            ),
          ),
          radius: 200,
        ),
      );

      MapResponseModel mapResponseModel =
          await remoteDataSource.getCinemaBySearchText(requestData);

      emit(
        state.copyWith(
          status: CinemaMapStatusX.success,
          initialCameraPosition: initialCameraPosition,
          places: mapResponseModel.places,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CinemaMapStatusX.error));
    }
  }

  Future<void> _mapInitializeHandler(
      MapInitialize event, Emitter<CinemaMapState> emit) async {
    controller = event.controller;
  }

  Future<void> _mapMarkerTapped(
      MapMarkTapped event, Emitter<CinemaMapState> emit) async {
    emit(state.copyWith(
      status: CinemaMapStatusX.success,
      selectedPlace: event.placeModel,
    ));
  }
}
