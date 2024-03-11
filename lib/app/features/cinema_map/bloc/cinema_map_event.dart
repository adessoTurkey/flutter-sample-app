part of 'cinema_map_bloc.dart';

sealed class CinemaMapEvent extends Equatable {
  const CinemaMapEvent();

  @override
  List<Object> get props => [];
}

final class CinemaFetching extends CinemaMapEvent {
  const CinemaFetching();

  @override
  List<Object> get props => [];
}
