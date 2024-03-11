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

  const MovieDetailState({
    this.status = MovieDetailStatusX.initial,
    this.movieDetailModel,
    this.creditResponse,
    this.videoModelResponse,
    this.isFavorite = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        status,
        movieDetailModel,
        creditResponse,
        videoModelResponse,
        isFavorite,
        errorMessage,
      ];

  MovieDetailState copyWith({
    MovieDetailStatusX? status,
    MovieDetailModel? movieDetailModel,
    CreditResponse? creditResponse,
    VideoModelResponse? videoModelResponse,
    bool? isFavorite,
    String? errorMessage,
  }) {
    return MovieDetailState(
      status: status ?? this.status,
      movieDetailModel: movieDetailModel ?? this.movieDetailModel,
      creditResponse: creditResponse ?? this.creditResponse,
      videoModelResponse: videoModelResponse ?? this.videoModelResponse,
      isFavorite: isFavorite ?? this.isFavorite,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
