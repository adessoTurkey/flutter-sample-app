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

final class MovieDetailAddFavoriteEvent extends MovieDetailEvent {
  final bool isFavorite;
  const MovieDetailAddFavoriteEvent({required this.isFavorite});

  @override
  List<Object> get props => [isFavorite];
}

final class MovieDetailAddRatingEvent extends MovieDetailEvent {
  const MovieDetailAddRatingEvent({
    required this.ratingValue,
  });

  final int ratingValue;

  @override
  List<Object> get props => [ratingValue];
}

final class MovieDetailRatingCollapsed extends MovieDetailEvent {
  const MovieDetailRatingCollapsed({
    required this.isCollapsed,
  });

  final bool isCollapsed;

  @override
  List<Object> get props => [isCollapsed];
}
