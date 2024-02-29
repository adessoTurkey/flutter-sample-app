import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/app/core/extensions/favorites_data_extension.dart';
import 'package:flutter_movie_app/app/core/utils/data_mapper.dart';
import 'package:flutter_movie_app/app/features/profile/models/account_detail/account_detail.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorite_data.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_movie/favorite_movie_data.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final RemoteDataSource remoteDataSource;

  ProfileBloc(this.remoteDataSource) : super(ProfileInitial()) {
    on<ProfileFetchingEvent>(_profileFetchingEvent);
  }

  Future<void> _profileFetchingEvent(
      ProfileFetchingEvent event, Emitter<ProfileState> emit) async {
    late AccountDetail accountDetail;
    late List<FavoriteMovieData> favoritesMovies;
    late List<FavoriteTvData> favoritesTVs;
    List<FavoriteData> favorites = [];

    try {
      emit(ProfileLoading());

      await Future.wait([
        remoteDataSource
            .getAccountDetail()
            .then((value) => accountDetail = value),
        remoteDataSource
            .getFavoriteMovies()
            .then((value) => favoritesMovies = value),
        remoteDataSource.getFavoriteTVs().then((value) => favoritesTVs = value),
      ]);

      favorites.addAll(DataMapper.favoriteMovieMapper(favoritesMovies));
      favorites.addAll(DataMapper.favoriteTvMapper(favoritesTVs));

      emit(ProfileSuccess(accountDetail: accountDetail, favorites: favorites));
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }
}
