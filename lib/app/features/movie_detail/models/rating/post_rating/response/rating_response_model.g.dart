// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingResponseModelImpl _$$RatingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingResponseModelImpl(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      statusMessage: json['status_message'] as String?,
    );

Map<String, dynamic> _$$RatingResponseModelImplToJson(
        _$RatingResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
