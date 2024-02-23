// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "imdb_id")
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "runtime")
  int? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overivew => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<GenreModel>? get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res, MovieDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "runtime") int? runtime,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "overview") String? overivew,
      @JsonKey(name: "genres") List<GenreModel>? genres});
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res, $Val extends MovieDetailModel>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? imdbId = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? overivew = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overivew: freezed == overivew
          ? _value.overivew
          : overivew // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailModelImplCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$MovieDetailModelImplCopyWith(_$MovieDetailModelImpl value,
          $Res Function(_$MovieDetailModelImpl) then) =
      __$$MovieDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "runtime") int? runtime,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "overview") String? overivew,
      @JsonKey(name: "genres") List<GenreModel>? genres});
}

/// @nodoc
class __$$MovieDetailModelImplCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res, _$MovieDetailModelImpl>
    implements _$$MovieDetailModelImplCopyWith<$Res> {
  __$$MovieDetailModelImplCopyWithImpl(_$MovieDetailModelImpl _value,
      $Res Function(_$MovieDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? imdbId = freezed,
    Object? releaseDate = freezed,
    Object? runtime = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? overivew = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$MovieDetailModelImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overivew: freezed == overivew
          ? _value.overivew
          : overivew // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailModelImpl implements _MovieDetailModel {
  const _$MovieDetailModelImpl(
      {@JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "imdb_id") this.imdbId,
      @JsonKey(name: "release_date") this.releaseDate,
      @JsonKey(name: "runtime") this.runtime,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "overview") this.overivew,
      @JsonKey(name: "genres") final List<GenreModel>? genres})
      : _genres = genres;

  factory _$MovieDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "imdb_id")
  final String? imdbId;
  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "runtime")
  final int? runtime;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "overview")
  final String? overivew;
  final List<GenreModel>? _genres;
  @override
  @JsonKey(name: "genres")
  List<GenreModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetailModel(backdropPath: $backdropPath, posterPath: $posterPath, imdbId: $imdbId, releaseDate: $releaseDate, runtime: $runtime, title: $title, voteAverage: $voteAverage, overivew: $overivew, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailModelImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.overivew, overivew) ||
                other.overivew == overivew) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      posterPath,
      imdbId,
      releaseDate,
      runtime,
      title,
      voteAverage,
      overivew,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      __$$MovieDetailModelImplCopyWithImpl<_$MovieDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailModel implements MovieDetailModel {
  const factory _MovieDetailModel(
          {@JsonKey(name: "backdrop_path") final String? backdropPath,
          @JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "imdb_id") final String? imdbId,
          @JsonKey(name: "release_date") final String? releaseDate,
          @JsonKey(name: "runtime") final int? runtime,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "vote_average") final double? voteAverage,
          @JsonKey(name: "overview") final String? overivew,
          @JsonKey(name: "genres") final List<GenreModel>? genres}) =
      _$MovieDetailModelImpl;

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "imdb_id")
  String? get imdbId;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "runtime")
  int? get runtime;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "overview")
  String? get overivew;
  @override
  @JsonKey(name: "genres")
  List<GenreModel>? get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
