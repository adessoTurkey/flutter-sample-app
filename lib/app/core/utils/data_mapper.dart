import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../features/cinema_map/models/response/place_response_model/place_response_model.dart';
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

  static Set<Marker>? toMarker(List<PlaceResponseModel>? places) {
    return places?.map((e) {
      return Marker(
        markerId: MarkerId(e.displayName?.text ?? ""),
        position: LatLng(
          e.location?.latitude ?? 0,
          e.location?.longitude ?? 0,
        ),
        infoWindow: InfoWindow(title: e.displayName?.text ?? ""),
      );
    }).toSet();
  }
}
