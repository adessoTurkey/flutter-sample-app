// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_request_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiRequestErrorImpl _$$ApiRequestErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRequestErrorImpl(
      success: json['success'] as bool,
      statusCode: json['statusCode'] as int,
      statusMessage: json['statusMessage'] as String,
    );

Map<String, dynamic> _$$ApiRequestErrorImplToJson(
        _$ApiRequestErrorImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
