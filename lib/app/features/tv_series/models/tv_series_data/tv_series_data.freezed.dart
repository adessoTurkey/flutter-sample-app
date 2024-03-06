// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvSeriesData _$TvSeriesDataFromJson(Map<String, dynamic> json) {
  return _TvSeriesData.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get tvSeriesTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get tvSeriesPosterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesDataCopyWith<TvSeriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesDataCopyWith<$Res> {
  factory $TvSeriesDataCopyWith(
          TvSeriesData value, $Res Function(TvSeriesData) then) =
      _$TvSeriesDataCopyWithImpl<$Res, TvSeriesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? tvSeriesTitle,
      @JsonKey(name: "poster_path") String? tvSeriesPosterPath,
      @JsonKey(name: "genre_ids") List<int>? genres,
      @JsonKey(name: "vote_average") double? voteAverage});
}

/// @nodoc
class _$TvSeriesDataCopyWithImpl<$Res, $Val extends TvSeriesData>
    implements $TvSeriesDataCopyWith<$Res> {
  _$TvSeriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tvSeriesTitle = freezed,
    Object? tvSeriesPosterPath = freezed,
    Object? genres = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tvSeriesTitle: freezed == tvSeriesTitle
          ? _value.tvSeriesTitle
          : tvSeriesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      tvSeriesPosterPath: freezed == tvSeriesPosterPath
          ? _value.tvSeriesPosterPath
          : tvSeriesPosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesDataImplCopyWith<$Res>
    implements $TvSeriesDataCopyWith<$Res> {
  factory _$$TvSeriesDataImplCopyWith(
          _$TvSeriesDataImpl value, $Res Function(_$TvSeriesDataImpl) then) =
      __$$TvSeriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? tvSeriesTitle,
      @JsonKey(name: "poster_path") String? tvSeriesPosterPath,
      @JsonKey(name: "genre_ids") List<int>? genres,
      @JsonKey(name: "vote_average") double? voteAverage});
}

/// @nodoc
class __$$TvSeriesDataImplCopyWithImpl<$Res>
    extends _$TvSeriesDataCopyWithImpl<$Res, _$TvSeriesDataImpl>
    implements _$$TvSeriesDataImplCopyWith<$Res> {
  __$$TvSeriesDataImplCopyWithImpl(
      _$TvSeriesDataImpl _value, $Res Function(_$TvSeriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tvSeriesTitle = freezed,
    Object? tvSeriesPosterPath = freezed,
    Object? genres = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$TvSeriesDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tvSeriesTitle: freezed == tvSeriesTitle
          ? _value.tvSeriesTitle
          : tvSeriesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      tvSeriesPosterPath: freezed == tvSeriesPosterPath
          ? _value.tvSeriesPosterPath
          : tvSeriesPosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSeriesDataImpl implements _TvSeriesData {
  const _$TvSeriesDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.tvSeriesTitle,
      @JsonKey(name: "poster_path") this.tvSeriesPosterPath,
      @JsonKey(name: "genre_ids") final List<int>? genres,
      @JsonKey(name: "vote_average") this.voteAverage})
      : _genres = genres;

  factory _$TvSeriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? tvSeriesTitle;
  @override
  @JsonKey(name: "poster_path")
  final String? tvSeriesPosterPath;
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
  @JsonKey(name: "vote_average")
  final double? voteAverage;

  @override
  String toString() {
    return 'TvSeriesData(id: $id, tvSeriesTitle: $tvSeriesTitle, tvSeriesPosterPath: $tvSeriesPosterPath, genres: $genres, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tvSeriesTitle, tvSeriesTitle) ||
                other.tvSeriesTitle == tvSeriesTitle) &&
            (identical(other.tvSeriesPosterPath, tvSeriesPosterPath) ||
                other.tvSeriesPosterPath == tvSeriesPosterPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tvSeriesTitle,
      tvSeriesPosterPath,
      const DeepCollectionEquality().hash(_genres),
      voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesDataImplCopyWith<_$TvSeriesDataImpl> get copyWith =>
      __$$TvSeriesDataImplCopyWithImpl<_$TvSeriesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesDataImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesData implements TvSeriesData {
  const factory _TvSeriesData(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? tvSeriesTitle,
          @JsonKey(name: "poster_path") final String? tvSeriesPosterPath,
          @JsonKey(name: "genre_ids") final List<int>? genres,
          @JsonKey(name: "vote_average") final double? voteAverage}) =
      _$TvSeriesDataImpl;

  factory _TvSeriesData.fromJson(Map<String, dynamic> json) =
      _$TvSeriesDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get tvSeriesTitle;
  @override
  @JsonKey(name: "poster_path")
  String? get tvSeriesPosterPath;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genres;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesDataImplCopyWith<_$TvSeriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
