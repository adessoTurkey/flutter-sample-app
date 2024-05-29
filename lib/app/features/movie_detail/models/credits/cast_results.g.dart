// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastResultsImpl _$$CastResultsImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['known_for_department'],
    disallowNullValues: const ['known_for_department'],
  );
  return _$CastResultsImpl(
    id: json['id'] as int?,
    profilePath: json['profile_path'] as String?,
    originalName: json['original_name'] as String?,
    knownForDepartment: $enumDecodeNullable(
        _$KnownForDepartmentEnumEnumMap, json['known_for_department'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
    castId: json['cast_id'] as int?,
    department: json['department'] as String?,
    character: json['character'] as String?,
    order: json['order'] as int?,
  );
}

Map<String, dynamic> _$$CastResultsImplToJson(_$CastResultsImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'profile_path': instance.profilePath,
    'original_name': instance.originalName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('known_for_department',
      _$KnownForDepartmentEnumEnumMap[instance.knownForDepartment]);
  val['cast_id'] = instance.castId;
  val['department'] = instance.department;
  val['character'] = instance.character;
  val['order'] = instance.order;
  return val;
}

const _$KnownForDepartmentEnumEnumMap = {
  KnownForDepartmentEnum.acting: 'Acting',
  KnownForDepartmentEnum.production: 'Production',
  KnownForDepartmentEnum.editing: 'Editing',
  KnownForDepartmentEnum.art: 'Art',
  KnownForDepartmentEnum.costume: 'Costume & Make-Up',
  KnownForDepartmentEnum.writing: 'Writing',
  KnownForDepartmentEnum.directing: 'Directing',
  KnownForDepartmentEnum.sound: 'Sound',
  KnownForDepartmentEnum.camera: 'Camera',
  KnownForDepartmentEnum.crew: 'Crew',
  KnownForDepartmentEnum.lighting: 'Lighting',
};
