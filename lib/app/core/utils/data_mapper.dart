import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/utils/widget_to_map_icon.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../features/profile/profile.dart';
import '../../features/search/search.dart';
import '../enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';

abstract final class DataMapper {
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

  static List<SearchEntity> searchMovieMapper(
      List<SearchMultiData> searchList) {
    return searchList.map((e) {
      return SearchEntity(
        type: e.mediaType,
        id: e.id ?? 0,
        title: e.mediaType == MediaTypeEnum.movie
            ? e.originalTitle
            : e.originalName,
        imageURL: e.mediaType == MediaTypeEnum.person
            ? e.getProfilePath
            : e.getImageURL,
      );
    }).toList();
  }
}

Future<BitmapDescriptor> widgetToBitMap(Widget child) async {
  return child.toBitmapDescriptor();
}
