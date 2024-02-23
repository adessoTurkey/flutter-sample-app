part of 'movie_detail_bloc.dart';

sealed class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object> get props => [];
}

final class MovieDetailInitialEvent extends MovieDetailEvent {
  final int movieId;
  const MovieDetailInitialEvent({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
