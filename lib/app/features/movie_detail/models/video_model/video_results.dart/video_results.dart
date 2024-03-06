// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_results.freezed.dart';
part 'video_results.g.dart';

@freezed
class VideoResults with _$VideoResults {
  const factory VideoResults({
    String? key,
    bool? offical,
    @JsonKey(
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    VideoTypeEnum? type,
    String? id,
  }) = _VideoResults;
  factory VideoResults.fromJson(Map<String, Object?> json) =>
      _$VideoResultsFromJson(json);
}
