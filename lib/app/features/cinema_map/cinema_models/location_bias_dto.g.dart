// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_bias_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationBiasDtoImpl _$$LocationBiasDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationBiasDtoImpl(
      circle: json['circle'] == null
          ? null
          : CircleDto.fromJson(json['circle'] as Map<String, dynamic>),
      radius: (json['radius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationBiasDtoImplToJson(
        _$LocationBiasDtoImpl instance) =>
    <String, dynamic>{
      'radius': instance.radius,
    };
