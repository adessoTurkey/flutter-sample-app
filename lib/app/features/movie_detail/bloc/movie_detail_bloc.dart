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
    try {
      MovieDetailModel movieDetailModel =
          await remoteDataSource.getMovieDetail(event.movieId);
      CreditResponse creditResponse =
          await remoteDataSource.getMovieCredits(event.movieId);
      VideoModelResponse videoModelResponse =
          await remoteDataSource.getMovieVideos(event.movieId);
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
