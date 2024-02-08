// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTokenModel _$RequestTokenModelFromJson(Map<String, dynamic> json) {
  return _RequestTokenModel.fromJson(json);
}

/// @nodoc
mixin _$RequestTokenModel {
  bool get success => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String get requestToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestTokenModelCopyWith<RequestTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTokenModelCopyWith<$Res> {
  factory $RequestTokenModelCopyWith(
          RequestTokenModel value, $Res Function(RequestTokenModel) then) =
      _$RequestTokenModelCopyWithImpl<$Res, RequestTokenModel>;
  @useResult
  $Res call({bool success, String expiresAt, String requestToken});
}

/// @nodoc
class _$RequestTokenModelCopyWithImpl<$Res, $Val extends RequestTokenModel>
    implements $RequestTokenModelCopyWith<$Res> {
  _$RequestTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? expiresAt = null,
    Object? requestToken = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTokenModelImplCopyWith<$Res>
    implements $RequestTokenModelCopyWith<$Res> {
  factory _$$RequestTokenModelImplCopyWith(_$RequestTokenModelImpl value,
          $Res Function(_$RequestTokenModelImpl) then) =
      __$$RequestTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String expiresAt, String requestToken});
}

/// @nodoc
class __$$RequestTokenModelImplCopyWithImpl<$Res>
    extends _$RequestTokenModelCopyWithImpl<$Res, _$RequestTokenModelImpl>
    implements _$$RequestTokenModelImplCopyWith<$Res> {
  __$$RequestTokenModelImplCopyWithImpl(_$RequestTokenModelImpl _value,
      $Res Function(_$RequestTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? expiresAt = null,
    Object? requestToken = null,
  }) {
    return _then(_$RequestTokenModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
class _$RequestTokenModelImpl implements _RequestTokenModel {
  const _$RequestTokenModelImpl(
      {required this.success,
      required this.expiresAt,
      required this.requestToken});

  factory _$RequestTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTokenModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String expiresAt;
  @override
  final String requestToken;

  @override
  String toString() {
    return 'RequestTokenModel(success: $success, expiresAt: $expiresAt, requestToken: $requestToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTokenModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.requestToken, requestToken) ||
                other.requestToken == requestToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, expiresAt, requestToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTokenModelImplCopyWith<_$RequestTokenModelImpl> get copyWith =>
      __$$RequestTokenModelImplCopyWithImpl<_$RequestTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTokenModelImplToJson(
      this,
    );
  }
}

abstract class _RequestTokenModel implements RequestTokenModel {
  const factory _RequestTokenModel(
      {required final bool success,
      required final String expiresAt,
      required final String requestToken}) = _$RequestTokenModelImpl;

  factory _RequestTokenModel.fromJson(Map<String, dynamic> json) =
      _$RequestTokenModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get expiresAt;
  @override
  String get requestToken;
  @override
  @JsonKey(ignore: true)
  _$$RequestTokenModelImplCopyWith<_$RequestTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
