// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddToFavoriteResponse _$AddToFavoriteResponseFromJson(
    Map<String, dynamic> json) {
  return _AddToFavoriteResponse.fromJson(json);
}

/// @nodoc
mixin _$AddToFavoriteResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_message")
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToFavoriteResponseCopyWith<AddToFavoriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavoriteResponseCopyWith<$Res> {
  factory $AddToFavoriteResponseCopyWith(AddToFavoriteResponse value,
          $Res Function(AddToFavoriteResponse) then) =
      _$AddToFavoriteResponseCopyWithImpl<$Res, AddToFavoriteResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class _$AddToFavoriteResponseCopyWithImpl<$Res,
        $Val extends AddToFavoriteResponse>
    implements $AddToFavoriteResponseCopyWith<$Res> {
  _$AddToFavoriteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddToFavoriteResponseImplCopyWith<$Res>
    implements $AddToFavoriteResponseCopyWith<$Res> {
  factory _$$AddToFavoriteResponseImplCopyWith(
          _$AddToFavoriteResponseImpl value,
          $Res Function(_$AddToFavoriteResponseImpl) then) =
      __$$AddToFavoriteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class __$$AddToFavoriteResponseImplCopyWithImpl<$Res>
    extends _$AddToFavoriteResponseCopyWithImpl<$Res,
        _$AddToFavoriteResponseImpl>
    implements _$$AddToFavoriteResponseImplCopyWith<$Res> {
  __$$AddToFavoriteResponseImplCopyWithImpl(_$AddToFavoriteResponseImpl _value,
      $Res Function(_$AddToFavoriteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$AddToFavoriteResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToFavoriteResponseImpl implements _AddToFavoriteResponse {
  const _$AddToFavoriteResponseImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "status_code") this.statusCode,
      @JsonKey(name: "status_message") this.statusMessage});

  factory _$AddToFavoriteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToFavoriteResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "status_code")
  final int? statusCode;
  @override
  @JsonKey(name: "status_message")
  final String? statusMessage;

  @override
  String toString() {
    return 'AddToFavoriteResponse(success: $success, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoriteResponseImpl &&
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
  _$$AddToFavoriteResponseImplCopyWith<_$AddToFavoriteResponseImpl>
      get copyWith => __$$AddToFavoriteResponseImplCopyWithImpl<
          _$AddToFavoriteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToFavoriteResponseImplToJson(
      this,
    );
  }
}

abstract class _AddToFavoriteResponse implements AddToFavoriteResponse {
  const factory _AddToFavoriteResponse(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "status_code") final int? statusCode,
          @JsonKey(name: "status_message") final String? statusMessage}) =
      _$AddToFavoriteResponseImpl;

  factory _AddToFavoriteResponse.fromJson(Map<String, dynamic> json) =
      _$AddToFavoriteResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "status_code")
  int? get statusCode;
  @override
  @JsonKey(name: "status_message")
  String? get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddToFavoriteResponseImplCopyWith<_$AddToFavoriteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
