// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrewResultsImpl _$$CrewResultsImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['known_for_department', 'job'],
    disallowNullValues: const ['known_for_department', 'job'],
  );
  return _$CrewResultsImpl(
    adult: json['adult'] as bool?,
    gender: json['gender'] as int?,
    id: json['id'] as int?,
    knownForDepartment: $enumDecodeNullable(
        _$KnownForDepartmentEnumEnumMap, json['known_for_department'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
    name: json['name'] as String?,
    originalName: json['original_name'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    profilePath: json['profile_path'] as String?,
    creditId: json['credit_id'] as String?,
    department: json['department'] as String?,
    job: $enumDecodeNullable(_$CastJobEnumEnumMap, json['job'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
  );
}

Map<String, dynamic> _$$CrewResultsImplToJson(_$CrewResultsImpl instance) {
  final val = <String, dynamic>{
    'adult': instance.adult,
    'gender': instance.gender,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('known_for_department',
      _$KnownForDepartmentEnumEnumMap[instance.knownForDepartment]);
  val['name'] = instance.name;
  val['original_name'] = instance.originalName;
  val['popularity'] = instance.popularity;
  val['profile_path'] = instance.profilePath;
  val['credit_id'] = instance.creditId;
  val['department'] = instance.department;
  writeNotNull('job', _$CastJobEnumEnumMap[instance.job]);
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

const _$CastJobEnumEnumMap = {
  CastJobEnum.director: 'Director',
  CastJobEnum.producer: 'Producer',
};
