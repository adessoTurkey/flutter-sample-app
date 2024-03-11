// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapRequestDto _$MapRequestDtoFromJson(Map<String, dynamic> json) {
  return _MapRequestDto.fromJson(json);
}

/// @nodoc
mixin _$MapRequestDto {
  @JsonKey(name: "textQuery")
  String? get textQuery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapRequestDtoCopyWith<MapRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRequestDtoCopyWith<$Res> {
  factory $MapRequestDtoCopyWith(
          MapRequestDto value, $Res Function(MapRequestDto) then) =
      _$MapRequestDtoCopyWithImpl<$Res, MapRequestDto>;
  @useResult
  $Res call({@JsonKey(name: "textQuery") String? textQuery});
}

/// @nodoc
class _$MapRequestDtoCopyWithImpl<$Res, $Val extends MapRequestDto>
    implements $MapRequestDtoCopyWith<$Res> {
  _$MapRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textQuery = freezed,
  }) {
    return _then(_value.copyWith(
      textQuery: freezed == textQuery
          ? _value.textQuery
          : textQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRequestDtoImplCopyWith<$Res>
    implements $MapRequestDtoCopyWith<$Res> {
  factory _$$MapRequestDtoImplCopyWith(
          _$MapRequestDtoImpl value, $Res Function(_$MapRequestDtoImpl) then) =
      __$$MapRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "textQuery") String? textQuery});
}

/// @nodoc
class __$$MapRequestDtoImplCopyWithImpl<$Res>
    extends _$MapRequestDtoCopyWithImpl<$Res, _$MapRequestDtoImpl>
    implements _$$MapRequestDtoImplCopyWith<$Res> {
  __$$MapRequestDtoImplCopyWithImpl(
      _$MapRequestDtoImpl _value, $Res Function(_$MapRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textQuery = freezed,
  }) {
    return _then(_$MapRequestDtoImpl(
      textQuery: freezed == textQuery
          ? _value.textQuery
          : textQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapRequestDtoImpl implements _MapRequestDto {
  const _$MapRequestDtoImpl({@JsonKey(name: "textQuery") this.textQuery});

  factory _$MapRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: "textQuery")
  final String? textQuery;

  @override
  String toString() {
    return 'MapRequestDto(textQuery: $textQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRequestDtoImpl &&
            (identical(other.textQuery, textQuery) ||
                other.textQuery == textQuery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, textQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRequestDtoImplCopyWith<_$MapRequestDtoImpl> get copyWith =>
      __$$MapRequestDtoImplCopyWithImpl<_$MapRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _MapRequestDto implements MapRequestDto {
  const factory _MapRequestDto(
          {@JsonKey(name: "textQuery") final String? textQuery}) =
      _$MapRequestDtoImpl;

  factory _MapRequestDto.fromJson(Map<String, dynamic> json) =
      _$MapRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: "textQuery")
  String? get textQuery;
  @override
  @JsonKey(ignore: true)
  _$$MapRequestDtoImplCopyWith<_$MapRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
