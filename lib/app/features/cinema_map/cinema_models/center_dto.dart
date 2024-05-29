// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_dto.freezed.dart';
part 'center_dto.g.dart';

@freezed
class CenterDto with _$CenterDto {
  const factory CenterDto({
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
  }) = _CenterDto;
  factory CenterDto.fromJson(Map<String, Object?> json) =>
      _$CenterDtoFromJson(json);
}
