// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceResponseModelImpl _$$PlaceResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceResponseModelImpl(
      formattedAddress: json['formattedAddress'] as String?,
      displayName: json['displayName'] == null
          ? null
          : PlaceDisplayNameModel.fromJson(
              json['displayName'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : PlaceLocationModel.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceResponseModelImplToJson(
        _$PlaceResponseModelImpl instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'displayName': instance.displayName,
      'location': instance.location,
    };
