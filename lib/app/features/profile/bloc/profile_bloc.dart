import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/add_to_favorite_response_extension.dart';
import 'package:flutter_movie_app/app/core/utils/data_mapper.dart';

import '../../../../api_call/models/favorite/dto/add_to_favorite_dto.dart';
import '../../../../api_call/models/favorite/response/add_to_favorite_response.dart';
import '../profile.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final RemoteDataSource _remoteDataSource;

  ProfileBloc(this._remoteDataSource) : super(ProfileInitial()) {
    on<ProfileFetchingEvent>(_profileFetchingEvent);
    on<RemoveFavoriteEvent>(_removeFavoritesEvent);
    on<AddFavoriteEvent>(_addFavoritesEvent);
  }

  Future<void> _profileFetchingEvent(
      ProfileFetchingEvent event, Emitter<ProfileState> emit) async {
    late AccountDetail accountDetail;
    late List<FavoriteMovieData> favoritesMovies;
    late List<FavoriteTvData> favoritesTVs;
    List<FavoriteEntity> favorites = [];

    try {
      emit(ProfileLoading());

      await Future.wait([
        _remoteDataSource
            .getAccountDetail()
            .then((value) => accountDetail = value),
        _remoteDataSource
            .getFavoriteMovies()
            .then((value) => favoritesMovies = value),
        _remoteDataSource
            .getFavoriteTVs()
            .then((value) => favoritesTVs = value),
      ]);

      favorites.addAll(DataMapper.favoriteMovieMapper(favoritesMovies));
      favorites.addAll(DataMapper.favoriteTvMapper(favoritesTVs));

      emit(ProfileSuccess(accountDetail: accountDetail, favorites: favorites));
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }

  Future<void> _addFavoritesEvent(
      AddFavoriteEvent event, Emitter<ProfileState> emit) async {
    try {
      var favoriteDto = AddToFavoriteDto(
        mediaType: event.favoriteType.name,
        favoriteId: event.id,
        favorite: event.isFavorite,
      );

      AddToFavoriteResponse addToFavoriteResponse =
          await _remoteDataSource.addToFavorite(favoriteDto);

      if (addToFavoriteResponse.isFavorite && state is ProfileSuccess) {
        var favorites = (state as ProfileSuccess).favorites;
        var accountDetail = (state as ProfileSuccess).accountDetail;
        favorites.add(FavoriteEntity(
            favoriteEntityType: event.favoriteType,
            id: event.id,
            posterPath: event.posterPath,
            releaseDate: event.releaseDate,
            title: event.title));
        emit(const AddRemoveFromFavoriteState(true));
        emit(ProfileLoading());
        Future.delayed(const Duration(milliseconds: 10));
        emit(ProfileSuccess(
            accountDetail: accountDetail, favorites: List.from(favorites)));
      }
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }

  Future<void> _removeFavoritesEvent(
      RemoveFavoriteEvent event, Emitter<ProfileState> emit) async {
    try {
      var favoriteDto = AddToFavoriteDto(
        mediaType: event.favoriteType.name,
        favoriteId: event.id,
        favorite: event.isFavorite,
      );

      AddToFavoriteResponse addToFavoriteResponse =
          await _remoteDataSource.addToFavorite(favoriteDto);

      if (!addToFavoriteResponse.isFavorite && state is ProfileSuccess) {
        var favorites = (state as ProfileSuccess).favorites;
        var accountDetail = (state as ProfileSuccess).accountDetail;
        favorites.removeWhere((favorite) => favorite.id == event.id);
        emit(const AddRemoveFromFavoriteState(false));
        emit(ProfileLoading());
        Future.delayed(const Duration(milliseconds: 10));
        emit(ProfileSuccess(
            accountDetail: accountDetail, favorites: List.from(favorites)));
      }
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }
}
