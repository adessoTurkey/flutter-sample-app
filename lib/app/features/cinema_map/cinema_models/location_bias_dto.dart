// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/features/cinema_map/cinema_models/circle_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_bias_dto.freezed.dart';
part 'location_bias_dto.g.dart';

@freezed
class LocationBiasDto with _$LocationBiasDto {
  const factory LocationBiasDto({
    @JsonKey(name: "circle", includeToJson: false) CircleDto? circle,
    @JsonKey(name: "radius") double? radius,
  }) = _LocationBiasDto;
  factory LocationBiasDto.fromJson(Map<String, Object?> json) =>
      _$LocationBiasDtoFromJson(json);
}
