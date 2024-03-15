part of 'cinema_map_bloc.dart';

enum CinemaMapStatusX { initial, loading, success, error }

final class CinemaMapState extends Equatable {
  final CinemaMapStatusX status;
  final MapResponseModel? mapResponseModel;
  final Set<Marker>? cinemaMarkers;
  final LatLng initialCameraPosition;

  const CinemaMapState({
    this.status = CinemaMapStatusX.initial,
    this.mapResponseModel,
    this.cinemaMarkers,
    this.initialCameraPosition =
        const LatLng(41.04497678214395, 29.00287763464729),
  });

  @override
  List<Object?> get props => [
        status,
        mapResponseModel,
        cinemaMarkers,
        initialCameraPosition,
      ];

  CinemaMapState copyWith({
    CinemaMapStatusX? status,
    MapResponseModel? mapResponseModel,
    Set<Marker>? cinemaMarkers,
    LatLng? initialCameraPosition,
  }) {
    return CinemaMapState(
      status: status ?? this.status,
      mapResponseModel: mapResponseModel ?? this.mapResponseModel,
      cinemaMarkers: cinemaMarkers ?? this.cinemaMarkers,
      initialCameraPosition:
          initialCameraPosition ?? this.initialCameraPosition,
    );
  }
}
