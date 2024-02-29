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
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/search/models/search_entity.dart';
import 'package:flutter_movie_app/app/features/search/models/search_multi/search_multi_data.dart';

abstract final class DataMapper {
  static List<SearchEntity> searchMovieMapper(
      List<SearchMultiData> searchList) {
    return searchList.map((e) {
      return SearchEntity(
        type: e.mediaType,
        id: e.id ?? 0,
        title: e.mediaType == MediaTypeEnum.movie
            ? e.originalTitle
            : e.mediaType == MediaTypeEnum.tv
                ? e.originalName
                : e.originalName,
        imageURL: e.mediaType == MediaTypeEnum.person
            ? e.getProfilePath
            : e.getImageURL,
        info: "Test",
      );
    }).toList();
  }
}
