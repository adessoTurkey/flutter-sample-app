// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieData _$MovieDataFromJson(Map<String, dynamic> json) {
  return _MovieData.fromJson(json);
}

/// @nodoc
mixin _$MovieData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get movieTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get moviePosterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAvarage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDataCopyWith<MovieData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDataCopyWith<$Res> {
  factory $MovieDataCopyWith(MovieData value, $Res Function(MovieData) then) =
      _$MovieDataCopyWithImpl<$Res, MovieData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? movieTitle,
      @JsonKey(name: "poster_path") String? moviePosterPath,
      @JsonKey(name: "genre_ids") List<int>? genres,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "vote_average") double? voteAvarage});
}

/// @nodoc
class _$MovieDataCopyWithImpl<$Res, $Val extends MovieData>
    implements $MovieDataCopyWith<$Res> {
  _$MovieDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movieTitle = freezed,
    Object? moviePosterPath = freezed,
    Object? genres = freezed,
    Object? releaseDate = freezed,
    Object? voteAvarage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      movieTitle: freezed == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      moviePosterPath: freezed == moviePosterPath
          ? _value.moviePosterPath
          : moviePosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAvarage: freezed == voteAvarage
          ? _value.voteAvarage
          : voteAvarage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDataImplCopyWith<$Res>
    implements $MovieDataCopyWith<$Res> {
  factory _$$MovieDataImplCopyWith(
          _$MovieDataImpl value, $Res Function(_$MovieDataImpl) then) =
      __$$MovieDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? movieTitle,
      @JsonKey(name: "poster_path") String? moviePosterPath,
      @JsonKey(name: "genre_ids") List<int>? genres,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "vote_average") double? voteAvarage});
}

/// @nodoc
class __$$MovieDataImplCopyWithImpl<$Res>
    extends _$MovieDataCopyWithImpl<$Res, _$MovieDataImpl>
    implements _$$MovieDataImplCopyWith<$Res> {
  __$$MovieDataImplCopyWithImpl(
      _$MovieDataImpl _value, $Res Function(_$MovieDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movieTitle = freezed,
    Object? moviePosterPath = freezed,
    Object? genres = freezed,
    Object? releaseDate = freezed,
    Object? voteAvarage = freezed,
  }) {
    return _then(_$MovieDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      movieTitle: freezed == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      moviePosterPath: freezed == moviePosterPath
          ? _value.moviePosterPath
          : moviePosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAvarage: freezed == voteAvarage
          ? _value.voteAvarage
          : voteAvarage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDataImpl implements _MovieData {
  _$MovieDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.movieTitle,
      @JsonKey(name: "poster_path") this.moviePosterPath,
      @JsonKey(name: "genre_ids") final List<int>? genres,
      @JsonKey(name: "release_date") this.releaseDate,
      @JsonKey(name: "vote_average") this.voteAvarage})
      : _genres = genres;

  factory _$MovieDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? movieTitle;
  @override
  @JsonKey(name: "poster_path")
  final String? moviePosterPath;
  final List<int>? _genres;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAvarage;

  @override
  String toString() {
    return 'MovieData(id: $id, movieTitle: $movieTitle, moviePosterPath: $moviePosterPath, genres: $genres, releaseDate: $releaseDate, voteAvarage: $voteAvarage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle) &&
            (identical(other.moviePosterPath, moviePosterPath) ||
                other.moviePosterPath == moviePosterPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAvarage, voteAvarage) ||
                other.voteAvarage == voteAvarage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, movieTitle, moviePosterPath,
      const DeepCollectionEquality().hash(_genres), releaseDate, voteAvarage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDataImplCopyWith<_$MovieDataImpl> get copyWith =>
      __$$MovieDataImplCopyWithImpl<_$MovieDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDataImplToJson(
      this,
    );
  }
}

abstract class _MovieData implements MovieData {
  factory _MovieData(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "title") final String? movieTitle,
          @JsonKey(name: "poster_path") final String? moviePosterPath,
          @JsonKey(name: "genre_ids") final List<int>? genres,
          @JsonKey(name: "release_date") final String? releaseDate,
          @JsonKey(name: "vote_average") final double? voteAvarage}) =
      _$MovieDataImpl;

  factory _MovieData.fromJson(Map<String, dynamic> json) =
      _$MovieDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get movieTitle;
  @override
  @JsonKey(name: "poster_path")
  String? get moviePosterPath;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genres;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAvarage;
  @override
  @JsonKey(ignore: true)
  _$$MovieDataImplCopyWith<_$MovieDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
