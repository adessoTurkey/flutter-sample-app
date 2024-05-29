// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_multi_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchMultiDataImpl _$$SearchMultiDataImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['media_type'],
    disallowNullValues: const ['media_type'],
  );
  return _$SearchMultiDataImpl(
    posterPath: json['poster_path'] as String?,
    id: json['id'] as int?,
    originalTitle: json['original_title'] as String?,
    mediaType: $enumDecodeNullable(_$MediaTypeEnumEnumMap, json['media_type'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
    releaseDate: json['release_date'] as String?,
    originalName: json['original_name'] as String?,
    firstAirDate: json['first_air_date'] as String?,
    knownForDepartment: json['known_for_department'] as String?,
    profilePath: json['profile_path'],
  );
}

Map<String, dynamic> _$$SearchMultiDataImplToJson(
    _$SearchMultiDataImpl instance) {
  final val = <String, dynamic>{
    'poster_path': instance.posterPath,
    'id': instance.id,
    'original_title': instance.originalTitle,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('media_type', _$MediaTypeEnumEnumMap[instance.mediaType]);
  val['release_date'] = instance.releaseDate;
  val['original_name'] = instance.originalName;
  val['first_air_date'] = instance.firstAirDate;
  val['known_for_department'] = instance.knownForDepartment;
  val['profile_path'] = instance.profilePath;
  return val;
}

const _$MediaTypeEnumEnumMap = {
  MediaTypeEnum.movie: 'movie',
  MediaTypeEnum.tv: 'tv',
  MediaTypeEnum.person: 'person',
};
