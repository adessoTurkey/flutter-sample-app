part of 'movie_detail_bloc.dart';

sealed class MovieDetailState extends Equatable {
  const MovieDetailState();

  @override
  List<Object?> get props => [];
}

final class MovieDetailInitial extends MovieDetailState {}

final class MovieDetailLoading extends MovieDetailState {
  const MovieDetailLoading();
}

final class MovieDetailSuccess extends MovieDetailState {
  final MovieDetailModel movieDetailModel;
  final CreditResponse creditResponse;
  final VideoModelResponse videoModelResponse;

  const MovieDetailSuccess(
      {required this.movieDetailModel,
      required this.creditResponse,
      required this.videoModelResponse});

  @override
  List<Object> get props =>
      [movieDetailModel, creditResponse, videoModelResponse];
}

final class MovieDetailError extends MovieDetailState {
  const MovieDetailError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
