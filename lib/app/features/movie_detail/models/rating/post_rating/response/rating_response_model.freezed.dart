// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingResponseModel _$RatingResponseModelFromJson(Map<String, dynamic> json) {
  return _RatingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RatingResponseModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_message")
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingResponseModelCopyWith<RatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingResponseModelCopyWith<$Res> {
  factory $RatingResponseModelCopyWith(
          RatingResponseModel value, $Res Function(RatingResponseModel) then) =
      _$RatingResponseModelCopyWithImpl<$Res, RatingResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class _$RatingResponseModelCopyWithImpl<$Res, $Val extends RatingResponseModel>
    implements $RatingResponseModelCopyWith<$Res> {
  _$RatingResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RatingResponseModelImplCopyWith<$Res>
    implements $RatingResponseModelCopyWith<$Res> {
  factory _$$RatingResponseModelImplCopyWith(_$RatingResponseModelImpl value,
          $Res Function(_$RatingResponseModelImpl) then) =
      __$$RatingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class __$$RatingResponseModelImplCopyWithImpl<$Res>
    extends _$RatingResponseModelCopyWithImpl<$Res, _$RatingResponseModelImpl>
    implements _$$RatingResponseModelImplCopyWith<$Res> {
  __$$RatingResponseModelImplCopyWithImpl(_$RatingResponseModelImpl _value,
      $Res Function(_$RatingResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$RatingResponseModelImpl(
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
class _$RatingResponseModelImpl implements _RatingResponseModel {
  const _$RatingResponseModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "status_code") this.statusCode,
      @JsonKey(name: "status_message") this.statusMessage});

  factory _$RatingResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingResponseModelImplFromJson(json);

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
    return 'RatingResponseModel(success: $success, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingResponseModelImpl &&
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
  _$$RatingResponseModelImplCopyWith<_$RatingResponseModelImpl> get copyWith =>
      __$$RatingResponseModelImplCopyWithImpl<_$RatingResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RatingResponseModel implements RatingResponseModel {
  const factory _RatingResponseModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "status_code") final int? statusCode,
          @JsonKey(name: "status_message") final String? statusMessage}) =
      _$RatingResponseModelImpl;

  factory _RatingResponseModel.fromJson(Map<String, dynamic> json) =
      _$RatingResponseModelImpl.fromJson;

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
  _$$RatingResponseModelImplCopyWith<_$RatingResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
