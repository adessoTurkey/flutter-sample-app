// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceLocationModelImpl _$$PlaceLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceLocationModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PlaceLocationModelImplToJson(
        _$PlaceLocationModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
