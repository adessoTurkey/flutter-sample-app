// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CenterDtoImpl _$$CenterDtoImplFromJson(Map<String, dynamic> json) =>
    _$CenterDtoImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CenterDtoImplToJson(_$CenterDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
