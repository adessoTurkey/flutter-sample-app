import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/utils/widget_to_map_icon.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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

Future<BitmapDescriptor> widgetToBitMap(Widget child) async {
  return child.toBitmapDescriptor();
}
