part of 'cinema_map_bloc.dart';

sealed class CinemaMapEvent extends Equatable {
  const CinemaMapEvent();

  @override
  List<Object?> get props => [];
}

final class CinemaFetching extends CinemaMapEvent {
  const CinemaFetching({
    this.controller,
  });

  final GoogleMapController? controller;

  @override
  List<Object?> get props => [controller];
}

final class MapInitialize extends CinemaMapEvent {
  const MapInitialize({
    this.controller,
  });

  final GoogleMapController? controller;

  @override
  List<Object?> get props => [controller];
}

final class MapMarkTapped extends CinemaMapEvent {
  const MapMarkTapped({
    this.placeModel,
  });

  final PlaceResponseModel? placeModel;

  @override
  List<Object?> get props => [placeModel];
}
