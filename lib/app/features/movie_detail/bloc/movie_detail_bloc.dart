import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/enums/network_fetch_status.dart';
import 'package:flutter_movie_app/app/core/extensions/add_to_favorite_response_extension.dart';
import '../../../../api_call/models/favorite/dto/add_to_favorite_dto.dart';
import '../../../../api_call/models/favorite/response/add_to_favorite_response.dart';
import '../../profile/profile.dart';
import '../models/movie_detail_models.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final RemoteDataSource remoteDataSource;

  MovieDetailBloc({required this.remoteDataSource})
      : super(const MovieDetailState()) {
    on<MovieDetailInitialEvent>(_movieDetailInitialEvent);
    on<MovieDetailAddFavoriteEvent>(_movieDetailAddToFavoriteEventTriggered);
  }

  Future<void> _movieDetailInitialEvent(
      MovieDetailInitialEvent event, Emitter<MovieDetailState> emit) async {
    emit(state.copyWith(status: NetworkFetchStatus.loading));
    late MovieDetailModel movieDetailModel;
    late CreditResponse creditResponse;
    late VideoModelResponse videoModelResponse;
    late List<FavoriteMovieData> favoritesMovies;

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
            .then((value) => videoModelResponse = value),
        remoteDataSource
            .getFavoriteMovies()
            .then((value) => favoritesMovies = value),
      ]);

      emit(state.copyWith(
        status: NetworkFetchStatus.success,
        movieDetailModel: movieDetailModel,
        creditResponse: creditResponse,
        videoModelResponse: videoModelResponse,
        isFavorite:
            favoritesMovies.any((element) => element.id == event.movieId),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _movieDetailAddToFavoriteEventTriggered(
      MovieDetailAddFavoriteEvent event, Emitter<MovieDetailState> emit) async {
    try {
      AddToFavoriteResponse response =
          await remoteDataSource.addToFavorite(AddToFavoriteDto(
        mediaType: "movie",
        favoriteId: event.movieId,
        favorite: !state.isFavorite,
      ));
      emit(state.copyWith(isFavorite: response.isFavorite));
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
