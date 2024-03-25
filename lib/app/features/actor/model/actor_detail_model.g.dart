// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorDetailModelImpl _$$ActorDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActorDetailModelImpl(
      name: json['name'] as String?,
      biography: json['biography'] as String?,
      birthday: json['birthday'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$ActorDetailModelImplToJson(
        _$ActorDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'biography': instance.biography,
      'birthday': instance.birthday,
      'place_of_birth': instance.placeOfBirth,
      'profile_path': instance.profilePath,
    };
