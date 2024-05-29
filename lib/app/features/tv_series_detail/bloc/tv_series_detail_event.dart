part of 'tv_series_detail_bloc.dart';

sealed class TvSeriesDetailEvent extends Equatable {
  const TvSeriesDetailEvent();

  @override
  List<Object> get props => [];
}

final class TvSeriesDetailInitialEvent extends TvSeriesDetailEvent {
  final int tvSeriesId;
  const TvSeriesDetailInitialEvent({required this.tvSeriesId});

  @override
  List<Object> get props => [tvSeriesId];
}

final class TvSeriesDetailAddFavoriteEvent extends TvSeriesDetailEvent {
  final bool isFavorite;
  const TvSeriesDetailAddFavoriteEvent({required this.isFavorite});

  @override
  List<Object> get props => [isFavorite];
}

final class TvSeriesDetailAddRatingEvent extends TvSeriesDetailEvent {
  const TvSeriesDetailAddRatingEvent({
    required this.ratingValue,
  });

  final int ratingValue;

  @override
  List<Object> get props => [ratingValue];
}

final class TvSeriesDetailRatingCollapsed extends TvSeriesDetailEvent {
  const TvSeriesDetailRatingCollapsed({
    required this.isCollapsed,
  });

  final bool isCollapsed;

  @override
  List<Object> get props => [isCollapsed];
}
