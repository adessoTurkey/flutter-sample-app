// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movie_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteMovieData _$FavoriteMovieDataFromJson(Map<String, dynamic> json) {
  return _FavoriteMovieData.fromJson(json);
}

/// @nodoc
mixin _$FavoriteMovieData {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteMovieDataCopyWith<FavoriteMovieData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteMovieDataCopyWith<$Res> {
  factory $FavoriteMovieDataCopyWith(
          FavoriteMovieData value, $Res Function(FavoriteMovieData) then) =
      _$FavoriteMovieDataCopyWithImpl<$Res, FavoriteMovieData>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "release_date") String? releaseDate});
}

/// @nodoc
class _$FavoriteMovieDataCopyWithImpl<$Res, $Val extends FavoriteMovieData>
    implements $FavoriteMovieDataCopyWith<$Res> {
  _$FavoriteMovieDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteMovieDataImplCopyWith<$Res>
    implements $FavoriteMovieDataCopyWith<$Res> {
  factory _$$FavoriteMovieDataImplCopyWith(_$FavoriteMovieDataImpl value,
          $Res Function(_$FavoriteMovieDataImpl) then) =
      __$$FavoriteMovieDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "release_date") String? releaseDate});
}

/// @nodoc
class __$$FavoriteMovieDataImplCopyWithImpl<$Res>
    extends _$FavoriteMovieDataCopyWithImpl<$Res, _$FavoriteMovieDataImpl>
    implements _$$FavoriteMovieDataImplCopyWith<$Res> {
  __$$FavoriteMovieDataImplCopyWithImpl(_$FavoriteMovieDataImpl _value,
      $Res Function(_$FavoriteMovieDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$FavoriteMovieDataImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteMovieDataImpl implements _FavoriteMovieData {
  const _$FavoriteMovieDataImpl(
      {@JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "release_date") this.releaseDate});

  factory _$FavoriteMovieDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteMovieDataImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;

  @override
  String toString() {
    return 'FavoriteMovieData(posterPath: $posterPath, title: $title, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMovieDataImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteMovieDataImplCopyWith<_$FavoriteMovieDataImpl> get copyWith =>
      __$$FavoriteMovieDataImplCopyWithImpl<_$FavoriteMovieDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteMovieDataImplToJson(
      this,
    );
  }
}

abstract class _FavoriteMovieData implements FavoriteMovieData {
  const factory _FavoriteMovieData(
          {@JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "release_date") final String? releaseDate}) =
      _$FavoriteMovieDataImpl;

  factory _FavoriteMovieData.fromJson(Map<String, dynamic> json) =
      _$FavoriteMovieDataImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteMovieDataImplCopyWith<_$FavoriteMovieDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
