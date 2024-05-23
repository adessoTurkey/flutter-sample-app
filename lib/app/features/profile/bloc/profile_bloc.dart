import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/utils/data_mapper.dart';
import '../profile.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final RemoteDataSource _remoteDataSource;

  ProfileBloc(this._remoteDataSource) : super(ProfileInitial()) {
    on<ProfileFetchingEvent>(_profileFetchingEvent);
    on<RemoveFromFavoriteEvent>(_removeFromFavoritesEvent);
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
        _remoteDataSource.getFavoriteTVs().then((value) => favoritesTVs = value),
      ]);

      favorites.addAll(DataMapper.favoriteMovieMapper(favoritesMovies));
      favorites.addAll(DataMapper.favoriteTvMapper(favoritesTVs));

      emit(ProfileSuccess(accountDetail: accountDetail, favorites: favorites));
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }

  Future<void> _removeFromFavoritesEvent(RemoveFromFavoriteEvent event,Emitter<ProfileState> emit )async{
    bool isSuccess=false;
    if(event.favorite.favoriteEntityType==FavoriteEntityType.movie){
      isSuccess= await _remoteDataSource.removeMovieFavorite(event.favorite.id!);
  } else{
      isSuccess= await _remoteDataSource.removeTvSeriesFavorite(event.favorite.id!);
    }

    if(isSuccess && state is ProfileSuccess){

      var favorites =  (state as ProfileSuccess).favorites;
      favorites.removeWhere((favorite)=>favorite.id ==event.favorite.id);
      var accountDetail=(state as ProfileSuccess).accountDetail;
      emit(ProfileLoading());
      Future.delayed(const Duration(milliseconds: 10));
      emit(ProfileSuccess(accountDetail: accountDetail, favorites: List.from(favorites)));
    }
  }


}

