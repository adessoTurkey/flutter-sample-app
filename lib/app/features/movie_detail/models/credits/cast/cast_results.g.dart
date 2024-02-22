// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastResultsImpl _$$CastResultsImplFromJson(Map<String, dynamic> json) =>
    _$CastResultsImpl(
      id: json['id'] as int?,
      profilePath: json['profile_path'] as String?,
      originalName: json['original_name'] as String?,
      knownForDepartment: json['known_for_department'] as String?,
      castId: json['cast_id'] as int?,
      department: json['department'] as String?,
      character: json['character'] as String?,
      job: json['job'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$CastResultsImplToJson(_$CastResultsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_path': instance.profilePath,
      'original_name': instance.originalName,
      'known_for_department': instance.knownForDepartment,
      'cast_id': instance.castId,
      'department': instance.department,
      'character': instance.character,
      'job': instance.job,
      'order': instance.order,
    };
