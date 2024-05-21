// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bias_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationBiasDto _$LocationBiasDtoFromJson(Map<String, dynamic> json) {
  return _LocationBiasDto.fromJson(json);
}

/// @nodoc
mixin _$LocationBiasDto {
  @JsonKey(name: "circle", includeToJson: false)
  CircleDto? get circle => throw _privateConstructorUsedError;
  @JsonKey(name: "radius")
  double? get radius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationBiasDtoCopyWith<LocationBiasDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationBiasDtoCopyWith<$Res> {
  factory $LocationBiasDtoCopyWith(
          LocationBiasDto value, $Res Function(LocationBiasDto) then) =
      _$LocationBiasDtoCopyWithImpl<$Res, LocationBiasDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "circle", includeToJson: false) CircleDto? circle,
      @JsonKey(name: "radius") double? radius});

  $CircleDtoCopyWith<$Res>? get circle;
}

/// @nodoc
class _$LocationBiasDtoCopyWithImpl<$Res, $Val extends LocationBiasDto>
    implements $LocationBiasDtoCopyWith<$Res> {
  _$LocationBiasDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circle = freezed,
    Object? radius = freezed,
  }) {
    return _then(_value.copyWith(
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as CircleDto?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CircleDtoCopyWith<$Res>? get circle {
    if (_value.circle == null) {
      return null;
    }

    return $CircleDtoCopyWith<$Res>(_value.circle!, (value) {
      return _then(_value.copyWith(circle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationBiasDtoImplCopyWith<$Res>
    implements $LocationBiasDtoCopyWith<$Res> {
  factory _$$LocationBiasDtoImplCopyWith(_$LocationBiasDtoImpl value,
          $Res Function(_$LocationBiasDtoImpl) then) =
      __$$LocationBiasDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "circle", includeToJson: false) CircleDto? circle,
      @JsonKey(name: "radius") double? radius});

  @override
  $CircleDtoCopyWith<$Res>? get circle;
}

/// @nodoc
class __$$LocationBiasDtoImplCopyWithImpl<$Res>
    extends _$LocationBiasDtoCopyWithImpl<$Res, _$LocationBiasDtoImpl>
    implements _$$LocationBiasDtoImplCopyWith<$Res> {
  __$$LocationBiasDtoImplCopyWithImpl(
      _$LocationBiasDtoImpl _value, $Res Function(_$LocationBiasDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circle = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$LocationBiasDtoImpl(
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as CircleDto?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationBiasDtoImpl implements _LocationBiasDto {
  const _$LocationBiasDtoImpl(
      {@JsonKey(name: "circle", includeToJson: false) this.circle,
      @JsonKey(name: "radius") this.radius});

  factory _$LocationBiasDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationBiasDtoImplFromJson(json);

  @override
  @JsonKey(name: "circle", includeToJson: false)
  final CircleDto? circle;
  @override
  @JsonKey(name: "radius")
  final double? radius;

  @override
  String toString() {
    return 'LocationBiasDto(circle: $circle, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationBiasDtoImpl &&
            (identical(other.circle, circle) || other.circle == circle) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, circle, radius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationBiasDtoImplCopyWith<_$LocationBiasDtoImpl> get copyWith =>
      __$$LocationBiasDtoImplCopyWithImpl<_$LocationBiasDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationBiasDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationBiasDto implements LocationBiasDto {
  const factory _LocationBiasDto(
      {@JsonKey(name: "circle", includeToJson: false) final CircleDto? circle,
      @JsonKey(name: "radius") final double? radius}) = _$LocationBiasDtoImpl;

  factory _LocationBiasDto.fromJson(Map<String, dynamic> json) =
      _$LocationBiasDtoImpl.fromJson;

  @override
  @JsonKey(name: "circle", includeToJson: false)
  CircleDto? get circle;
  @override
  @JsonKey(name: "radius")
  double? get radius;
  @override
  @JsonKey(ignore: true)
  _$$LocationBiasDtoImplCopyWith<_$LocationBiasDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
