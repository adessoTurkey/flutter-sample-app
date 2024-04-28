// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingRequestModel _$RatingRequestModelFromJson(Map<String, dynamic> json) {
  return _RatingRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RatingRequestModel {
  @JsonKey(name: "value", includeToJson: true)
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingRequestModelCopyWith<RatingRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingRequestModelCopyWith<$Res> {
  factory $RatingRequestModelCopyWith(
          RatingRequestModel value, $Res Function(RatingRequestModel) then) =
      _$RatingRequestModelCopyWithImpl<$Res, RatingRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "value", includeToJson: true) int? value});
}

/// @nodoc
class _$RatingRequestModelCopyWithImpl<$Res, $Val extends RatingRequestModel>
    implements $RatingRequestModelCopyWith<$Res> {
  _$RatingRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingRequestModelImplCopyWith<$Res>
    implements $RatingRequestModelCopyWith<$Res> {
  factory _$$RatingRequestModelImplCopyWith(_$RatingRequestModelImpl value,
          $Res Function(_$RatingRequestModelImpl) then) =
      __$$RatingRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "value", includeToJson: true) int? value});
}

/// @nodoc
class __$$RatingRequestModelImplCopyWithImpl<$Res>
    extends _$RatingRequestModelCopyWithImpl<$Res, _$RatingRequestModelImpl>
    implements _$$RatingRequestModelImplCopyWith<$Res> {
  __$$RatingRequestModelImplCopyWithImpl(_$RatingRequestModelImpl _value,
      $Res Function(_$RatingRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$RatingRequestModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingRequestModelImpl implements _RatingRequestModel {
  const _$RatingRequestModelImpl(
      {@JsonKey(name: "value", includeToJson: true) this.value});

  factory _$RatingRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "value", includeToJson: true)
  final int? value;

  @override
  String toString() {
    return 'RatingRequestModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingRequestModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingRequestModelImplCopyWith<_$RatingRequestModelImpl> get copyWith =>
      __$$RatingRequestModelImplCopyWithImpl<_$RatingRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RatingRequestModel implements RatingRequestModel {
  const factory _RatingRequestModel(
          {@JsonKey(name: "value", includeToJson: true) final int? value}) =
      _$RatingRequestModelImpl;

  factory _RatingRequestModel.fromJson(Map<String, dynamic> json) =
      _$RatingRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "value", includeToJson: true)
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$RatingRequestModelImplCopyWith<_$RatingRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
