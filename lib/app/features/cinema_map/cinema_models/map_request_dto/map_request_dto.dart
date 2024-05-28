// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../cinema_map.dart';

part 'map_request_dto.freezed.dart';
part 'map_request_dto.g.dart';

@freezed
class MapRequestDto with _$MapRequestDto {
  const factory MapRequestDto({
    @JsonKey(name: "textQuery") required String textQuery,
    @JsonKey(name: "locationBias", includeToJson: false)
    LocationBiasDto? location,
  }) = _MapRequestDto;
  factory MapRequestDto.fromJson(Map<String, Object?> json) =>
      _$MapRequestDtoFromJson(json);
}
