import 'package:flutter_movie_app/app/core/extensions/favorites_data_extension.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_movie/favorite_movie_data.dart';

import '../../features/profile/models/favorites/favorite_data.dart';
import '../../features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';

final class DataMapper {
  static List<FavoriteData> favoriteTvMapper(
      List<FavoriteTvData> favoriteTvList) {
    return favoriteTvList.map((e) {
      return FavoriteData(
        favoriteDataType: FavoriteDataType.tv,
        id: e.id,
        title: e.originalName,
        releaseDate: e.firstAirDate,
        posterPath: e.getImageURL,
      );
    }).toList();
  }

  static List<FavoriteData> favoriteMovieMapper(
      List<FavoriteMovieData> favoriteMovieList) {
    return favoriteMovieList.map((e) {
      return FavoriteData(
        favoriteDataType: FavoriteDataType.movie,
        id: e.id,
        title: e.title,
        releaseDate: e.releaseDate,
        posterPath: e.getImageURL,
      );
    }).toList();
  }
}
