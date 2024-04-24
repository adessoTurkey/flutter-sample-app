part of 'movie_detail_bloc.dart';

enum MovieDetailStatusX {
  initial,
  loading,
  success,
  error,
}

final class MovieDetailState extends Equatable {
  final MovieDetailStatusX status;
  final MovieDetailModel? movieDetailModel;
  final CreditResponse? creditResponse;
  final VideoModelResponse? videoModelResponse;
  final bool isFavorite;
  final String? errorMessage;
  final int ratingValue;
  final bool isCollapsed;
  final RatingResponseModel? ratingResponseModel;

  const MovieDetailState({
    this.status = MovieDetailStatusX.initial,
    this.movieDetailModel,
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
        movieDetailModel,
        creditResponse,
        videoModelResponse,
        isFavorite,
        errorMessage,
        ratingValue,
        isCollapsed,
        ratingResponseModel
      ];

  MovieDetailState copyWith({
    MovieDetailStatusX? status,
    MovieDetailModel? movieDetailModel,
    CreditResponse? creditResponse,
    VideoModelResponse? videoModelResponse,
    bool? isFavorite,
    String? errorMessage,
    int? ratingValue,
    bool? isCollapsed,
    RatingResponseModel? ratingResponseModel
  }) {
    return MovieDetailState(
      status: status ?? this.status,
      movieDetailModel: movieDetailModel ?? this.movieDetailModel,
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
