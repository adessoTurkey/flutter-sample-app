// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rated_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatedListResponseImpl _$$RatedListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RatedListResponseImpl(
      id: json['id'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RatedListResponseImplToJson(
        _$RatedListResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
    };
