part of 'tv_series_bloc.dart';

sealed class TvSeriesEvent extends Equatable {
  const TvSeriesEvent();

  @override
  List<Object> get props => [];
}

final class TvSeriesFetching extends TvSeriesEvent {
  final TvSeriesCategory categoryType;
  const TvSeriesFetching({required this.categoryType});

  @override
  List<Object> get props => [categoryType];
}

final class CarouselSliding extends TvSeriesEvent {
  final int currentIndex;
  const CarouselSliding({required this.currentIndex});

  @override
  List<Object> get props => [currentIndex];
}
