// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_to_favorite_dto.freezed.dart';
part 'add_to_favorite_dto.g.dart';

@freezed
class AddToFavoriteDto with _$AddToFavoriteDto {
  const factory AddToFavoriteDto({
    @JsonKey(name: "media_type") String? mediaType,
    @JsonKey(name: "media_id") int? favoriteId,
    @JsonKey(name: "favorite") bool? favorite,
  }) = _AddToFavoriteDto;
  factory AddToFavoriteDto.fromJson(Map<String, Object?> json) =>
      _$AddToFavoriteDtoFromJson(json);
}
