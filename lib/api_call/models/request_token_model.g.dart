// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTokenModelImpl _$$RequestTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestTokenModelImpl(
      success: json['success'] as bool,
      expiresAt: json['expiresAt'] as String,
      requestToken: json['requestToken'] as String,
    );

Map<String, dynamic> _$$RequestTokenModelImplToJson(
        _$RequestTokenModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expiresAt': instance.expiresAt,
      'requestToken': instance.requestToken,
    };
