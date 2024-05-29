part of 'movies_bloc.dart';

sealed class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

final class MoviesFetching extends MoviesEvent {
  final MovieCategoriesEnum categoryType;
  const MoviesFetching({required this.categoryType});

  @override
  List<Object> get props => [categoryType];
}

final class MovieCarouselSliding extends MoviesEvent {
  final int currentIndex;

  const MovieCarouselSliding({required this.currentIndex});

  @override
  List<Object> get props => [currentIndex];
}
