// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CenterDto _$CenterDtoFromJson(Map<String, dynamic> json) {
  return _CenterDto.fromJson(json);
}

/// @nodoc
mixin _$CenterDto {
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterDtoCopyWith<CenterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterDtoCopyWith<$Res> {
  factory $CenterDtoCopyWith(CenterDto value, $Res Function(CenterDto) then) =
      _$CenterDtoCopyWithImpl<$Res, CenterDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$CenterDtoCopyWithImpl<$Res, $Val extends CenterDto>
    implements $CenterDtoCopyWith<$Res> {
  _$CenterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterDtoImplCopyWith<$Res>
    implements $CenterDtoCopyWith<$Res> {
  factory _$$CenterDtoImplCopyWith(
          _$CenterDtoImpl value, $Res Function(_$CenterDtoImpl) then) =
      __$$CenterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class __$$CenterDtoImplCopyWithImpl<$Res>
    extends _$CenterDtoCopyWithImpl<$Res, _$CenterDtoImpl>
    implements _$$CenterDtoImplCopyWith<$Res> {
  __$$CenterDtoImplCopyWithImpl(
      _$CenterDtoImpl _value, $Res Function(_$CenterDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CenterDtoImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterDtoImpl implements _CenterDto {
  const _$CenterDtoImpl(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude});

  factory _$CenterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterDtoImplFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;

  @override
  String toString() {
    return 'CenterDto(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterDtoImplCopyWith<_$CenterDtoImpl> get copyWith =>
      __$$CenterDtoImplCopyWithImpl<_$CenterDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterDtoImplToJson(
      this,
    );
  }
}

abstract class _CenterDto implements CenterDto {
  const factory _CenterDto(
      {@JsonKey(name: "latitude") final double? latitude,
      @JsonKey(name: "longitude") final double? longitude}) = _$CenterDtoImpl;

  factory _CenterDto.fromJson(Map<String, dynamic> json) =
      _$CenterDtoImpl.fromJson;

  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CenterDtoImplCopyWith<_$CenterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
