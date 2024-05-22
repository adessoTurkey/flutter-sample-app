// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvSeriesDetailModel _$TvSeriesDetailModelFromJson(Map<String, dynamic> json) {
  return _TvSeriesDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesDetailModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_air_date")
  String? get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<GenreModel>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  List<TvSeriesCreatorModel>? get creators =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesDetailModelCopyWith<TvSeriesDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesDetailModelCopyWith<$Res> {
  factory $TvSeriesDetailModelCopyWith(
          TvSeriesDetailModel value, $Res Function(TvSeriesDetailModel) then) =
      _$TvSeriesDetailModelCopyWithImpl<$Res, TvSeriesDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "last_air_date") String? lastAirDate,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "genres") List<GenreModel>? genres,
      @JsonKey(name: "created_by") List<TvSeriesCreatorModel>? creators});
}

/// @nodoc
class _$TvSeriesDetailModelCopyWithImpl<$Res, $Val extends TvSeriesDetailModel>
    implements $TvSeriesDetailModelCopyWith<$Res> {
  _$TvSeriesDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? episodeRunTime = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? firstAirDate = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfSeasons = freezed,
    Object? name = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
    Object? creators = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeRunTime: freezed == episodeRunTime
          ? _value.episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>?,
      creators: freezed == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesCreatorModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesDetailModelImplCopyWith<$Res>
    implements $TvSeriesDetailModelCopyWith<$Res> {
  factory _$$TvSeriesDetailModelImplCopyWith(_$TvSeriesDetailModelImpl value,
          $Res Function(_$TvSeriesDetailModelImpl) then) =
      __$$TvSeriesDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "last_air_date") String? lastAirDate,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "genres") List<GenreModel>? genres,
      @JsonKey(name: "created_by") List<TvSeriesCreatorModel>? creators});
}

/// @nodoc
class __$$TvSeriesDetailModelImplCopyWithImpl<$Res>
    extends _$TvSeriesDetailModelCopyWithImpl<$Res, _$TvSeriesDetailModelImpl>
    implements _$$TvSeriesDetailModelImplCopyWith<$Res> {
  __$$TvSeriesDetailModelImplCopyWithImpl(_$TvSeriesDetailModelImpl _value,
      $Res Function(_$TvSeriesDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? episodeRunTime = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? firstAirDate = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfSeasons = freezed,
    Object? name = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
    Object? creators = freezed,
  }) {
    return _then(_$TvSeriesDetailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeRunTime: freezed == episodeRunTime
          ? _value._episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>?,
      creators: freezed == creators
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesCreatorModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSeriesDetailModelImpl implements _TvSeriesDetailModel {
  const _$TvSeriesDetailModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "episode_run_time") final List<int>? episodeRunTime,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "first_air_date") this.firstAirDate,
      @JsonKey(name: "last_air_date") this.lastAirDate,
      @JsonKey(name: "number_of_seasons") this.numberOfSeasons,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "genres") final List<GenreModel>? genres,
      @JsonKey(name: "created_by") final List<TvSeriesCreatorModel>? creators})
      : _episodeRunTime = episodeRunTime,
        _genres = genres,
        _creators = creators;

  factory _$TvSeriesDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<int>? _episodeRunTime;
  @override
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "first_air_date")
  final String? firstAirDate;
  @override
  @JsonKey(name: "last_air_date")
  final String? lastAirDate;
  @override
  @JsonKey(name: "number_of_seasons")
  final int? numberOfSeasons;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "overview")
  final String? overview;
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

  final List<TvSeriesCreatorModel>? _creators;
  @override
  @JsonKey(name: "created_by")
  List<TvSeriesCreatorModel>? get creators {
    final value = _creators;
    if (value == null) return null;
    if (_creators is EqualUnmodifiableListView) return _creators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvSeriesDetailModel(id: $id, episodeRunTime: $episodeRunTime, backdropPath: $backdropPath, posterPath: $posterPath, firstAirDate: $firstAirDate, lastAirDate: $lastAirDate, numberOfSeasons: $numberOfSeasons, name: $name, voteAverage: $voteAverage, overview: $overview, genres: $genres, creators: $creators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._episodeRunTime, _episodeRunTime) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._creators, _creators));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_episodeRunTime),
      backdropPath,
      posterPath,
      firstAirDate,
      lastAirDate,
      numberOfSeasons,
      name,
      voteAverage,
      overview,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_creators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesDetailModelImplCopyWith<_$TvSeriesDetailModelImpl> get copyWith =>
      __$$TvSeriesDetailModelImplCopyWithImpl<_$TvSeriesDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesDetailModel implements TvSeriesDetailModel {
  const factory _TvSeriesDetailModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "episode_run_time") final List<int>? episodeRunTime,
      @JsonKey(name: "backdrop_path") final String? backdropPath,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "first_air_date") final String? firstAirDate,
      @JsonKey(name: "last_air_date") final String? lastAirDate,
      @JsonKey(name: "number_of_seasons") final int? numberOfSeasons,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "overview") final String? overview,
      @JsonKey(name: "genres") final List<GenreModel>? genres,
      @JsonKey(name: "created_by")
      final List<TvSeriesCreatorModel>? creators}) = _$TvSeriesDetailModelImpl;

  factory _TvSeriesDetailModel.fromJson(Map<String, dynamic> json) =
      _$TvSeriesDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "first_air_date")
  String? get firstAirDate;
  @override
  @JsonKey(name: "last_air_date")
  String? get lastAirDate;
  @override
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "genres")
  List<GenreModel>? get genres;
  @override
  @JsonKey(name: "created_by")
  List<TvSeriesCreatorModel>? get creators;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesDetailModelImplCopyWith<_$TvSeriesDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
