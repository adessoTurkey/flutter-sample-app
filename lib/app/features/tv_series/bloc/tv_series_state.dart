part of 'tv_series_bloc.dart';

sealed class TvSeriesState extends Equatable {
  const TvSeriesState();

  @override
  List<Object?> get props => [];
}

final class TvSeriesInitial extends TvSeriesState {}

final class TvSeriesLoading extends TvSeriesState {}

final class TvSeriesSuccess extends TvSeriesState {
  const TvSeriesSuccess({required this.tvSeriesList, required this.tvSeries});

  final List<TvSeriesData> tvSeriesList;
  final TvSeriesData tvSeries;

  @override
  List<Object?> get props => [tvSeriesList, tvSeries];
}

final class CarouselSlideSuccess extends TvSeriesState {
  const CarouselSlideSuccess({required this.tvSeriesModel});

  final TvSeriesData tvSeriesModel;

  @override
  List<Object?> get props => [tvSeriesModel];
}

final class TvSeriesError extends TvSeriesState {
  const TvSeriesError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
