import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/features/search/models/search_multi/search_multi_data.dart';

extension SearchMultiDataExtension on SearchMultiData {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";

  String get getProfilePath =>
      "${dotenv.get(EnvConstants.imageUrl)}${profilePath.toString()}";
}