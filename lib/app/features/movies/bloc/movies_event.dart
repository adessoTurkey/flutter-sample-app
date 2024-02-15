part of 'movies_bloc.dart';

sealed class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

final class MoviesFetching extends MoviesEvent {
  final MovieCategoriesEnum categoryType;
  const MoviesFetching({required this.categoryType});
}

final class CarouselSliding extends MoviesEvent {
  final int currentIndex;
  const CarouselSliding({required this.currentIndex});
}
