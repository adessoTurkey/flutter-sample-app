import '../../features/profile/profile.dart';
import '../enums/enums.dart';

final class DataMapper {
  static List<FavoriteEntity> favoriteTvMapper(
      List<FavoriteTvData> favoriteTvList) {
    return favoriteTvList.map((e) {
      return FavoriteEntity(
        favoriteEntityType: FavoriteEntityType.tv,
        id: e.id,
        title: e.originalName,
        releaseDate: e.firstAirDate,
        posterPath: e.posterPath,
      );
    }).toList();
  }

  static List<FavoriteEntity> favoriteMovieMapper(
      List<FavoriteMovieData> favoriteMovieList) {
    return favoriteMovieList.map((e) {
      return FavoriteEntity(
        favoriteEntityType: FavoriteEntityType.movie,
        id: e.id,
        title: e.title,
        releaseDate: e.releaseDate,
        posterPath: e.posterPath,
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
