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
