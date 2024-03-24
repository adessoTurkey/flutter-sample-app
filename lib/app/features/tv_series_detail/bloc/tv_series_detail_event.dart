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
  final int tvSeriesId;
  const TvSeriesDetailAddFavoriteEvent({required this.tvSeriesId});

  @override
  List<Object> get props => [tvSeriesId];
}
