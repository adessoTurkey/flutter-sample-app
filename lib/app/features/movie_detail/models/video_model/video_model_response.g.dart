// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelResponseImpl _$$VideoModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoModelResponseImpl(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => VideoResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoModelResponseImplToJson(
        _$VideoModelResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
