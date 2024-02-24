// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_credentials_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginCredentialsRequestModel _$LoginCredentialsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LoginCredentialsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LoginCredentialsRequestModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsRequestModelCopyWith<$Res> {
  factory $LoginCredentialsRequestModelCopyWith(
          LoginCredentialsRequestModel value,
          $Res Function(LoginCredentialsRequestModel) then) =
      _$LoginCredentialsRequestModelCopyWithImpl<$Res,
          LoginCredentialsRequestModel>;
}

/// @nodoc
class _$LoginCredentialsRequestModelCopyWithImpl<$Res,
        $Val extends LoginCredentialsRequestModel>
    implements $LoginCredentialsRequestModelCopyWith<$Res> {
  _$LoginCredentialsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginCredentialsRequestModelImplCopyWith<$Res> {
  factory _$$LoginCredentialsRequestModelImplCopyWith(
          _$LoginCredentialsRequestModelImpl value,
          $Res Function(_$LoginCredentialsRequestModelImpl) then) =
      __$$LoginCredentialsRequestModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCredentialsRequestModelImplCopyWithImpl<$Res>
    extends _$LoginCredentialsRequestModelCopyWithImpl<$Res,
        _$LoginCredentialsRequestModelImpl>
    implements _$$LoginCredentialsRequestModelImplCopyWith<$Res> {
  __$$LoginCredentialsRequestModelImplCopyWithImpl(
      _$LoginCredentialsRequestModelImpl _value,
      $Res Function(_$LoginCredentialsRequestModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoginCredentialsRequestModelImpl
    implements _LoginCredentialsRequestModel {
  const _$LoginCredentialsRequestModelImpl();

  factory _$LoginCredentialsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LoginCredentialsRequestModelImplFromJson(json);

  @override
  String toString() {
    return 'LoginCredentialsRequestModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsRequestModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCredentialsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LoginCredentialsRequestModel
    implements LoginCredentialsRequestModel {
  const factory _LoginCredentialsRequestModel() =
      _$LoginCredentialsRequestModelImpl;

  factory _LoginCredentialsRequestModel.fromJson(Map<String, dynamic> json) =
      _$LoginCredentialsRequestModelImpl.fromJson;
}
