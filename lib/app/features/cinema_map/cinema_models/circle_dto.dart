// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/features/cinema_map/cinema_models/center_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle_dto.freezed.dart';
part 'circle_dto.g.dart';

@freezed
class CircleDto with _$CircleDto {
  const factory CircleDto({
    @JsonKey(name: "center", includeToJson: false) CenterDto? center,
  }) = _CircleDto;
  factory CircleDto.fromJson(Map<String, Object?> json) =>
      _$CircleDtoFromJson(json);
}
