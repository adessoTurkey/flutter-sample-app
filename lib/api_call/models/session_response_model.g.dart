// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionResponseModelImpl _$$SessionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionResponseModelImpl(
      success: json['success'] as bool?,
      sessionId: json['session_id'] as String?,
    );

Map<String, dynamic> _$$SessionResponseModelImplToJson(
        _$SessionResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'session_id': instance.sessionId,
    };
