// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapRequestDtoImpl _$$MapRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$MapRequestDtoImpl(
      textQuery: json['textQuery'] as String,
      location: json['locationBias'] == null
          ? null
          : LocationBiasDto.fromJson(
              json['locationBias'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapRequestDtoImplToJson(_$MapRequestDtoImpl instance) =>
    <String, dynamic>{
      'textQuery': instance.textQuery,
    };
