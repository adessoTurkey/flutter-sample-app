import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/extensions/add_to_favorite_response_extension.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';
import '../../../../api_call/models/favorite/dto/add_to_favorite_dto.dart';
import '../../../../api_call/models/favorite/response/add_to_favorite_response.dart';
import '../../movie_detail/models/credits/credit_response.dart';
import '../../movie_detail/models/video_model/video_model_response.dart';
import '../models/tv_series_detail_model.dart';

part 'tv_series_detail_event.dart';
part 'tv_series_detail_state.dart';

class TvSeriesDetailBloc extends Bloc<TvSeriesDetailEvent, TvSeriesDetailState> {
  final RemoteDataSource remoteDataSource;

  TvSeriesDetailBloc({required this.remoteDataSource})
      : super(const TvSeriesDetailState()) {
    on<TvSeriesDetailInitialEvent>(_tvSeriesDetailInitialEvent);
    on<TvSeriesDetailAddFavoriteEvent>(_tvSeriesDetailAddFavoriteEvent);
  }

  Future<void> _tvSeriesDetailInitialEvent(
      TvSeriesDetailInitialEvent event, Emitter<TvSeriesDetailState> emit) async {
    emit(state.copyWith(status: TvSeriesDetailStatus.loading));
    late TvSeriesDetailModel tvSeriesDetailModel;
    late CreditResponse creditResponse;
    late VideoModelResponse videoModelResponse;
    late List<FavoriteTvData> favoritesMovies;
    try {
      await Future.wait([
        remoteDataSource
            .getTvSeriesDetail(event.tvSeriesId)
            .then((value) => tvSeriesDetailModel = value),
        remoteDataSource
            .getTvSeriesCredits(event.tvSeriesId)
            .then((value) => creditResponse = value),
        remoteDataSource
            .getTvSeriesVideos(event.tvSeriesId)
            .then((value) => videoModelResponse = value),
        remoteDataSource
            .getFavoriteTVs()
            .then((value) => favoritesMovies = value),
      ]);

      emit(
          state.copyWith(
            status: TvSeriesDetailStatus.success,
            tvSeriesDetailModel: tvSeriesDetailModel,
            creditResponse: creditResponse,
            videoModelResponse: videoModelResponse,
            isFavorite:
            favoritesMovies.any((element) => element.id == event.tvSeriesId),
          ));
    } catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(
        status: TvSeriesDetailStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _tvSeriesDetailAddFavoriteEvent(
      TvSeriesDetailAddFavoriteEvent event, Emitter<TvSeriesDetailState> emit) async {
    try {
      AddToFavoriteResponse response =
      await remoteDataSource.addToFavorite(AddToFavoriteDto(
        mediaType: "tv",
        favoriteId: event.tvSeriesId,
        favorite: !state.isFavorite,
      ));
      emit(state.copyWith(isFavorite: response.isFavorite));
    } catch (e) {
      emit(state.copyWith(
        status: TvSeriesDetailStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
