part of 'cinema_map_bloc.dart';

enum CinemaMapStatusX { initial, loading, success, error }

final class CinemaMapState extends Equatable {
  final CinemaMapStatusX status;
  final MapResponseModel? mapResponseModel;
  final LatLng initialCameraPosition;
  final List<PlaceResponseModel>? places;
  final PlaceResponseModel? selectedPlace;

  const CinemaMapState({
    this.status = CinemaMapStatusX.initial,
    this.mapResponseModel,
    this.initialCameraPosition =
        const LatLng(41.04497678214395, 29.00287763464729),
    this.places,
    this.selectedPlace,
  });

  @override
  List<Object?> get props => [
        status,
        mapResponseModel,
        initialCameraPosition,
        places,
        selectedPlace,
      ];

  CinemaMapState copyWith({
    CinemaMapStatusX? status,
    MapResponseModel? mapResponseModel,
    LatLng? initialCameraPosition,
    List<PlaceResponseModel>? places,
    PlaceResponseModel? selectedPlace,
  }) {
    return CinemaMapState(
      status: status ?? this.status,
      mapResponseModel: mapResponseModel ?? this.mapResponseModel,
      initialCameraPosition:
          initialCameraPosition ?? this.initialCameraPosition,
      places: places ?? this.places,
      selectedPlace: selectedPlace ?? this.selectedPlace,
    );
  }
}
