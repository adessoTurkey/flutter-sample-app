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
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_token')
  String get requestToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCredentialsRequestModelCopyWith<LoginCredentialsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsRequestModelCopyWith<$Res> {
  factory $LoginCredentialsRequestModelCopyWith(
          LoginCredentialsRequestModel value,
          $Res Function(LoginCredentialsRequestModel) then) =
      _$LoginCredentialsRequestModelCopyWithImpl<$Res,
          LoginCredentialsRequestModel>;
  @useResult
  $Res call(
      {String username,
      String password,
      @JsonKey(name: 'request_token') String requestToken});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? requestToken = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCredentialsRequestModelImplCopyWith<$Res>
    implements $LoginCredentialsRequestModelCopyWith<$Res> {
  factory _$$LoginCredentialsRequestModelImplCopyWith(
          _$LoginCredentialsRequestModelImpl value,
          $Res Function(_$LoginCredentialsRequestModelImpl) then) =
      __$$LoginCredentialsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      @JsonKey(name: 'request_token') String requestToken});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? requestToken = null,
  }) {
    return _then(_$LoginCredentialsRequestModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCredentialsRequestModelImpl
    implements _LoginCredentialsRequestModel {
  const _$LoginCredentialsRequestModelImpl(
      {required this.username,
      required this.password,
      @JsonKey(name: 'request_token') required this.requestToken});

  factory _$LoginCredentialsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LoginCredentialsRequestModelImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey(name: 'request_token')
  final String requestToken;

  @override
  String toString() {
    return 'LoginCredentialsRequestModel(username: $username, password: $password, requestToken: $requestToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsRequestModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.requestToken, requestToken) ||
                other.requestToken == requestToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, requestToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCredentialsRequestModelImplCopyWith<
          _$LoginCredentialsRequestModelImpl>
      get copyWith => __$$LoginCredentialsRequestModelImplCopyWithImpl<
          _$LoginCredentialsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCredentialsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LoginCredentialsRequestModel
    implements LoginCredentialsRequestModel {
  const factory _LoginCredentialsRequestModel(
          {required final String username,
          required final String password,
          @JsonKey(name: 'request_token') required final String requestToken}) =
      _$LoginCredentialsRequestModelImpl;

  factory _LoginCredentialsRequestModel.fromJson(Map<String, dynamic> json) =
      _$LoginCredentialsRequestModelImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(name: 'request_token')
  String get requestToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginCredentialsRequestModelImplCopyWith<
          _$LoginCredentialsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
