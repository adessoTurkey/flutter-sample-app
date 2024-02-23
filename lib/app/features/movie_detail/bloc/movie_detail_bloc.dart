import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import '../models/movie_detail_models.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final RemoteDataSource remoteDataSource;

  MovieDetailBloc({required this.remoteDataSource})
      : super(MovieDetailInitial()) {
    on<MovieDetailInitialEvent>(_movieDetailInitialEvent);
  }

  Future<void> _movieDetailInitialEvent(
      MovieDetailInitialEvent event, Emitter<MovieDetailState> emit) async {
    emit(const MovieDetailLoading());
    late MovieDetailModel movieDetailModel;
    late CreditResponse creditResponse;
    late VideoModelResponse videoModelResponse;
    try {
      await Future.wait([
        remoteDataSource
            .getMovieDetail(event.movieId)
            .then((value) => movieDetailModel = value),
        remoteDataSource
            .getMovieCredits(event.movieId)
            .then((value) => creditResponse = value),
        remoteDataSource
            .getMovieVideos(event.movieId)
            .then((value) => videoModelResponse = value)
      ]);

      emit(
        MovieDetailSuccess(
            movieDetailModel: movieDetailModel,
            creditResponse: creditResponse,
            videoModelResponse: videoModelResponse),
      );
    } catch (e) {
      emit(
        MovieDetailError(errorMessage: e.toString()),
      );
    }
  }
}
