import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_movie/favorite_movie_data.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';

import '../constants/constants.dart';

extension FavoriteTvDataExtension on FavoriteTvData {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";
}

extension FavoriteMovieDataExtension on FavoriteMovieData {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";
}
