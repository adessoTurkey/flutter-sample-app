// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapResponseModelImpl _$$MapResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MapResponseModelImpl(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => PlaceResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapResponseModelImplToJson(
        _$MapResponseModelImpl instance) =>
    <String, dynamic>{
      'places': instance.places,
    };
