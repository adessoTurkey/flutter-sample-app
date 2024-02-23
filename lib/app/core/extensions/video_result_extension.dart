import 'package:flutter_movie_app/app/core/enums/video_type_enum.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';

extension VideoModelResponseExtension on VideoModelResponse {
  String getTrailerURL() {
    return results!
            .lastWhere((element) => element.type == VideoTypeEnum.trailer)
            .key ??
        results!
            .lastWhere((element) => element.type == VideoTypeEnum.teaser)
            .key ??
        "";
  }
}
