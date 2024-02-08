// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_request_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiRequestError _$ApiRequestErrorFromJson(Map<String, dynamic> json) {
  return _ApiRequestError.fromJson(json);
}

/// @nodoc
mixin _$ApiRequestError {
  bool get success => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRequestErrorCopyWith<ApiRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRequestErrorCopyWith<$Res> {
  factory $ApiRequestErrorCopyWith(
          ApiRequestError value, $Res Function(ApiRequestError) then) =
      _$ApiRequestErrorCopyWithImpl<$Res, ApiRequestError>;
  @useResult
  $Res call({bool success, int statusCode, String statusMessage});
}

/// @nodoc
class _$ApiRequestErrorCopyWithImpl<$Res, $Val extends ApiRequestError>
    implements $ApiRequestErrorCopyWith<$Res> {
  _$ApiRequestErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRequestErrorImplCopyWith<$Res>
    implements $ApiRequestErrorCopyWith<$Res> {
  factory _$$ApiRequestErrorImplCopyWith(_$ApiRequestErrorImpl value,
          $Res Function(_$ApiRequestErrorImpl) then) =
      __$$ApiRequestErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int statusCode, String statusMessage});
}

/// @nodoc
class __$$ApiRequestErrorImplCopyWithImpl<$Res>
    extends _$ApiRequestErrorCopyWithImpl<$Res, _$ApiRequestErrorImpl>
    implements _$$ApiRequestErrorImplCopyWith<$Res> {
  __$$ApiRequestErrorImplCopyWithImpl(
      _$ApiRequestErrorImpl _value, $Res Function(_$ApiRequestErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_$ApiRequestErrorImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRequestErrorImpl implements _ApiRequestError {
  const _$ApiRequestErrorImpl(
      {required this.success,
      required this.statusCode,
      required this.statusMessage});

  factory _$ApiRequestErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRequestErrorImplFromJson(json);

  @override
  final bool success;
  @override
  final int statusCode;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'ApiRequestError(success: $success, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRequestErrorImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, statusCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRequestErrorImplCopyWith<_$ApiRequestErrorImpl> get copyWith =>
      __$$ApiRequestErrorImplCopyWithImpl<_$ApiRequestErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRequestErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiRequestError implements ApiRequestError {
  const factory _ApiRequestError(
      {required final bool success,
      required final int statusCode,
      required final String statusMessage}) = _$ApiRequestErrorImpl;

  factory _ApiRequestError.fromJson(Map<String, dynamic> json) =
      _$ApiRequestErrorImpl.fromJson;

  @override
  bool get success;
  @override
  int get statusCode;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$ApiRequestErrorImplCopyWith<_$ApiRequestErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
