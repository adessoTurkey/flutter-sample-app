part of 'cinema_map_bloc.dart';

sealed class CinemaMapEvent extends Equatable {
  const CinemaMapEvent();

  @override
  List<Object?> get props => [];
}

final class CinemaFetching extends CinemaMapEvent {}

final class MapInitialize extends CinemaMapEvent {
  const MapInitialize({
    this.controller,
  });

  final GoogleMapController? controller;

  @override
  List<Object?> get props => [controller];
}
