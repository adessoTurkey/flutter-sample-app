part of 'tv_series_detail_bloc.dart';

enum TvSeriesDetailStatus {
  initial,
  loading,
  success,
  error,
}

final class TvSeriesDetailState extends Equatable {
  final TvSeriesDetailStatus status;
  final TvSeriesDetailModel? tvSeriesDetailModel;
  final CreditResponse? creditResponse;
  final VideoModelResponse? videoModelResponse;
  final bool isFavorite;
  final String? errorMessage;

  const TvSeriesDetailState({
    this.status = TvSeriesDetailStatus.initial,
    this.tvSeriesDetailModel,
    this.creditResponse,
    this.videoModelResponse,
    this.isFavorite = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
    status,
    tvSeriesDetailModel,
    creditResponse,
    videoModelResponse,
    isFavorite,
    errorMessage,
  ];

  TvSeriesDetailState copyWith({
    TvSeriesDetailStatus? status,
    TvSeriesDetailModel? tvSeriesDetailModel,
    CreditResponse? creditResponse,
    VideoModelResponse? videoModelResponse,
    bool? isFavorite,
    String? errorMessage,
  }) {
    return TvSeriesDetailState(
      status: status ?? this.status,
      tvSeriesDetailModel: tvSeriesDetailModel ?? this.tvSeriesDetailModel,
      creditResponse: creditResponse ?? this.creditResponse,
      videoModelResponse: videoModelResponse ?? this.videoModelResponse,
      isFavorite: isFavorite ?? this.isFavorite,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}