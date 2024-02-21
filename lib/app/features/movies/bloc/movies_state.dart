part of 'movies_bloc.dart';

sealed class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object?> get props => [];
}

final class MoviesInitial extends MoviesState {}

final class MoviesLoading extends MoviesState {}

final class MoviesSuccess extends MoviesState {
  const MoviesSuccess({required this.movieList, required this.movie});

  final List<MovieData> movieList;
  final MovieData movie;

  @override
  List<Object?> get props => [movieList, movie];
}

final class CarouselSlideSuccess extends MoviesState {
  const CarouselSlideSuccess({required this.movieModel});

  final MovieData movieModel;

  @override
  List<Object?> get props => [movieModel];
}

final class MoviesError extends MoviesState {
  const MoviesError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
