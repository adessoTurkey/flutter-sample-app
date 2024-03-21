// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToFavoriteResponseImpl _$$AddToFavoriteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToFavoriteResponseImpl(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      statusMessage: json['status_message'] as String?,
    );

Map<String, dynamic> _$$AddToFavoriteResponseImplToJson(
        _$AddToFavoriteResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
