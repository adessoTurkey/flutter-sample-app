// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_tv_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteTvData _$FavoriteTvDataFromJson(Map<String, dynamic> json) {
  return _FavoriteTvData.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTvData {
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get first_air_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteTvDataCopyWith<FavoriteTvData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTvDataCopyWith<$Res> {
  factory $FavoriteTvDataCopyWith(
          FavoriteTvData value, $Res Function(FavoriteTvData) then) =
      _$FavoriteTvDataCopyWithImpl<$Res, FavoriteTvData>;
  @useResult
  $Res call(
      {@JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "first_air_date") String? first_air_date});
}

/// @nodoc
class _$FavoriteTvDataCopyWithImpl<$Res, $Val extends FavoriteTvData>
    implements $FavoriteTvDataCopyWith<$Res> {
  _$FavoriteTvDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalName = freezed,
    Object? posterPath = freezed,
    Object? first_air_date = freezed,
  }) {
    return _then(_value.copyWith(
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      first_air_date: freezed == first_air_date
          ? _value.first_air_date
          : first_air_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteTvDataImplCopyWith<$Res>
    implements $FavoriteTvDataCopyWith<$Res> {
  factory _$$FavoriteTvDataImplCopyWith(_$FavoriteTvDataImpl value,
          $Res Function(_$FavoriteTvDataImpl) then) =
      __$$FavoriteTvDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "first_air_date") String? first_air_date});
}

/// @nodoc
class __$$FavoriteTvDataImplCopyWithImpl<$Res>
    extends _$FavoriteTvDataCopyWithImpl<$Res, _$FavoriteTvDataImpl>
    implements _$$FavoriteTvDataImplCopyWith<$Res> {
  __$$FavoriteTvDataImplCopyWithImpl(
      _$FavoriteTvDataImpl _value, $Res Function(_$FavoriteTvDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalName = freezed,
    Object? posterPath = freezed,
    Object? first_air_date = freezed,
  }) {
    return _then(_$FavoriteTvDataImpl(
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      first_air_date: freezed == first_air_date
          ? _value.first_air_date
          : first_air_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteTvDataImpl implements _FavoriteTvData {
  const _$FavoriteTvDataImpl(
      {@JsonKey(name: "original_name") this.originalName,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "first_air_date") this.first_air_date});

  factory _$FavoriteTvDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteTvDataImplFromJson(json);

  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "first_air_date")
  final String? first_air_date;

  @override
  String toString() {
    return 'FavoriteTvData(originalName: $originalName, posterPath: $posterPath, first_air_date: $first_air_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteTvDataImpl &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.first_air_date, first_air_date) ||
                other.first_air_date == first_air_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, originalName, posterPath, first_air_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteTvDataImplCopyWith<_$FavoriteTvDataImpl> get copyWith =>
      __$$FavoriteTvDataImplCopyWithImpl<_$FavoriteTvDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteTvDataImplToJson(
      this,
    );
  }
}

abstract class _FavoriteTvData implements FavoriteTvData {
  const factory _FavoriteTvData(
          {@JsonKey(name: "original_name") final String? originalName,
          @JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "first_air_date") final String? first_air_date}) =
      _$FavoriteTvDataImpl;

  factory _FavoriteTvData.fromJson(Map<String, dynamic> json) =
      _$FavoriteTvDataImpl.fromJson;

  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "first_air_date")
  String? get first_air_date;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteTvDataImplCopyWith<_$FavoriteTvDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
