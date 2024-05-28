import 'dart:async';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';

import '../../../core/enums/enums.dart';
import '../../profile/profile.dart';
import '../models/models.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final RemoteDataSource remoteDataSource;
  final ProfileBloc profileBloc;
  late StreamSubscription _streamSubscription;
  MovieDetailBloc({required this.remoteDataSource,required this.profileBloc})
      : super(const MovieDetailState()) {
    on<MovieDetailInitialEvent>(_movieDetailInitialEvent);
    on<MovieDetailAddFavoriteEvent>(_movieDetailAddToFavoriteEventTriggered);
    on<MovieDetailAddRatingEvent>(_movieDetailAddRatingEventTriggered);
    on<MovieDetailRatingCollapsed>(_movieDetailRatingCollapsedTriggered);

   _streamSubscription = profileBloc.stream.listen((state){
        if(state  is AddRemoveFromFavoriteState){
            add(MovieDetailAddFavoriteEvent(isFavorite: state.isFavorite));
        }
    });
  }

  Future<void> _movieDetailInitialEvent(
      MovieDetailInitialEvent event, Emitter<MovieDetailState> emit) async {
    emit(state.copyWith(status: NetworkFetchStatus.loading));
    late MovieDetailModel movieDetailModel;
    late CreditResponse creditResponse;
    late VideoModelResponse videoModelResponse;
    late List<FavoriteMovieData> favoritesMovies;
    late List<RatedListResponse>? ratedList;

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
        remoteDataSource
            .getRatedList(RatingEnpoints.fetchRatingMovies)
            .then((value) => ratedList = value),
      ]);

      RatedListResponse? checkRated = ratedList
          ?.firstWhereOrNull((element) => element.id == movieDetailModel.id);

      emit(state.copyWith(
        status: NetworkFetchStatus.success,
        movieDetailModel: movieDetailModel,
        creditResponse: creditResponse,
        videoModelResponse: videoModelResponse,
        isFavorite:
            favoritesMovies.any((element) => element.id == event.movieId),
        ratingValue: checkRated?.rating?.toInt(),
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
    /*  AddToFavoriteResponse response =
          await remoteDataSource.addToFavorite(AddToFavoriteDto(
        mediaType: "movie",
        //favoriteId: event.movieId,
        favorite: !state.isFavorite,
      )); */
      emit(state.copyWith(isFavorite: event.isFavorite));
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _movieDetailAddRatingEventTriggered(
      MovieDetailAddRatingEvent event, Emitter<MovieDetailState> emit) async {
    try {
      RatingResponseModel response = await remoteDataSource.postRating(
        RatingEnpoints.postRatingMovie,
        state.movieDetailModel?.id ?? 0,
        event.ratingValue,
      );
      emit(
        state.copyWith(
          ratingValue: event.ratingValue,
          ratingResponseModel: response,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _movieDetailRatingCollapsedTriggered(
      MovieDetailRatingCollapsed event, Emitter<MovieDetailState> emit) async {
    emit(state.copyWith(isCollapsed: !event.isCollapsed));
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
