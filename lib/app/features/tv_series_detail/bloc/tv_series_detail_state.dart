part of 'tv_series_detail_bloc.dart';

final class TvSeriesDetailState extends Equatable {
  final NetworkFetchStatus status;
  final TvSeriesDetailModel? tvSeriesDetailModel;
  final CreditResponse? creditResponse;
  final VideoModelResponse? videoModelResponse;
  final bool isFavorite;
  final String? errorMessage;
  final int ratingValue;
  final bool isCollapsed;
  final RatingResponseModel? ratingResponseModel;

  const TvSeriesDetailState({
    this.status = NetworkFetchStatus.initial,
    this.tvSeriesDetailModel,
    this.creditResponse,
    this.videoModelResponse,
    this.isFavorite = false,
    this.errorMessage,
    this.ratingValue = 0,
    this.isCollapsed = false,
    this.ratingResponseModel,
  });

  @override
  List<Object?> get props => [
    status,
    tvSeriesDetailModel,
    creditResponse,
    videoModelResponse,
    isFavorite,
    errorMessage,
    ratingValue,
    isCollapsed,
    ratingResponseModel
  ];

  TvSeriesDetailState copyWith({
    NetworkFetchStatus? status,
    TvSeriesDetailModel? tvSeriesDetailModel,
    CreditResponse? creditResponse,
    VideoModelResponse? videoModelResponse,
    bool? isFavorite,
    String? errorMessage,
    int? ratingValue,
    bool? isCollapsed,
    RatingResponseModel? ratingResponseModel
  }) {
    return TvSeriesDetailState(
      status: status ?? this.status,
      tvSeriesDetailModel: tvSeriesDetailModel ?? this.tvSeriesDetailModel,
      creditResponse: creditResponse ?? this.creditResponse,
      videoModelResponse: videoModelResponse ?? this.videoModelResponse,
      isFavorite: isFavorite ?? this.isFavorite,
      errorMessage: errorMessage ?? this.errorMessage,
      ratingValue: ratingValue ?? this.ratingValue,
      isCollapsed: isCollapsed ?? this.isCollapsed,
      ratingResponseModel: ratingResponseModel ?? this.ratingResponseModel,
    );
  }
}