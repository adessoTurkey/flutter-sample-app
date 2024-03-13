// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_credentials_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginCredentialsRequestModelImpl _$$LoginCredentialsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginCredentialsRequestModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      requestToken: json['request_token'] as String,
    );

Map<String, dynamic> _$$LoginCredentialsRequestModelImplToJson(
        _$LoginCredentialsRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'request_token': instance.requestToken,
    };
