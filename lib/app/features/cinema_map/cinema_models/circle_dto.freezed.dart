// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CircleDto _$CircleDtoFromJson(Map<String, dynamic> json) {
  return _CircleDto.fromJson(json);
}

/// @nodoc
mixin _$CircleDto {
  @JsonKey(name: "center", includeToJson: false)
  CenterDto? get center => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CircleDtoCopyWith<CircleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleDtoCopyWith<$Res> {
  factory $CircleDtoCopyWith(CircleDto value, $Res Function(CircleDto) then) =
      _$CircleDtoCopyWithImpl<$Res, CircleDto>;
  @useResult
  $Res call({@JsonKey(name: "center", includeToJson: false) CenterDto? center});

  $CenterDtoCopyWith<$Res>? get center;
}

/// @nodoc
class _$CircleDtoCopyWithImpl<$Res, $Val extends CircleDto>
    implements $CircleDtoCopyWith<$Res> {
  _$CircleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
  }) {
    return _then(_value.copyWith(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as CenterDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CenterDtoCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $CenterDtoCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CircleDtoImplCopyWith<$Res>
    implements $CircleDtoCopyWith<$Res> {
  factory _$$CircleDtoImplCopyWith(
          _$CircleDtoImpl value, $Res Function(_$CircleDtoImpl) then) =
      __$$CircleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "center", includeToJson: false) CenterDto? center});

  @override
  $CenterDtoCopyWith<$Res>? get center;
}

/// @nodoc
class __$$CircleDtoImplCopyWithImpl<$Res>
    extends _$CircleDtoCopyWithImpl<$Res, _$CircleDtoImpl>
    implements _$$CircleDtoImplCopyWith<$Res> {
  __$$CircleDtoImplCopyWithImpl(
      _$CircleDtoImpl _value, $Res Function(_$CircleDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
  }) {
    return _then(_$CircleDtoImpl(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as CenterDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircleDtoImpl implements _CircleDto {
  const _$CircleDtoImpl(
      {@JsonKey(name: "center", includeToJson: false) this.center});

  factory _$CircleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircleDtoImplFromJson(json);

  @override
  @JsonKey(name: "center", includeToJson: false)
  final CenterDto? center;

  @override
  String toString() {
    return 'CircleDto(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleDtoImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleDtoImplCopyWith<_$CircleDtoImpl> get copyWith =>
      __$$CircleDtoImplCopyWithImpl<_$CircleDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CircleDtoImplToJson(
      this,
    );
  }
}

abstract class _CircleDto implements CircleDto {
  const factory _CircleDto(
      {@JsonKey(name: "center", includeToJson: false)
      final CenterDto? center}) = _$CircleDtoImpl;

  factory _CircleDto.fromJson(Map<String, dynamic> json) =
      _$CircleDtoImpl.fromJson;

  @override
  @JsonKey(name: "center", includeToJson: false)
  CenterDto? get center;
  @override
  @JsonKey(ignore: true)
  _$$CircleDtoImplCopyWith<_$CircleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
