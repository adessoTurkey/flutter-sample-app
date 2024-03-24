// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_creator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvSeriesCreatorModel _$TvSeriesCreatorModelFromJson(Map<String, dynamic> json) {
  return _TvSeriesCreatorModel.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesCreatorModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesCreatorModelCopyWith<TvSeriesCreatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesCreatorModelCopyWith<$Res> {
  factory $TvSeriesCreatorModelCopyWith(TvSeriesCreatorModel value,
          $Res Function(TvSeriesCreatorModel) then) =
      _$TvSeriesCreatorModelCopyWithImpl<$Res, TvSeriesCreatorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class _$TvSeriesCreatorModelCopyWithImpl<$Res,
        $Val extends TvSeriesCreatorModel>
    implements $TvSeriesCreatorModelCopyWith<$Res> {
  _$TvSeriesCreatorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesCreatorModelImplCopyWith<$Res>
    implements $TvSeriesCreatorModelCopyWith<$Res> {
  factory _$$TvSeriesCreatorModelImplCopyWith(_$TvSeriesCreatorModelImpl value,
          $Res Function(_$TvSeriesCreatorModelImpl) then) =
      __$$TvSeriesCreatorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class __$$TvSeriesCreatorModelImplCopyWithImpl<$Res>
    extends _$TvSeriesCreatorModelCopyWithImpl<$Res, _$TvSeriesCreatorModelImpl>
    implements _$$TvSeriesCreatorModelImplCopyWith<$Res> {
  __$$TvSeriesCreatorModelImplCopyWithImpl(_$TvSeriesCreatorModelImpl _value,
      $Res Function(_$TvSeriesCreatorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creditId = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$TvSeriesCreatorModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSeriesCreatorModelImpl implements _TvSeriesCreatorModel {
  const _$TvSeriesCreatorModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "credit_id") this.creditId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "profile_path") this.profilePath});

  factory _$TvSeriesCreatorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesCreatorModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;

  @override
  String toString() {
    return 'TvSeriesCreatorModel(id: $id, creditId: $creditId, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesCreatorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, creditId, name, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesCreatorModelImplCopyWith<_$TvSeriesCreatorModelImpl>
      get copyWith =>
          __$$TvSeriesCreatorModelImplCopyWithImpl<_$TvSeriesCreatorModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesCreatorModelImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesCreatorModel implements TvSeriesCreatorModel {
  const factory _TvSeriesCreatorModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "credit_id") final String? creditId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "profile_path") final String? profilePath}) =
      _$TvSeriesCreatorModelImpl;

  factory _TvSeriesCreatorModel.fromJson(Map<String, dynamic> json) =
      _$TvSeriesCreatorModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesCreatorModelImplCopyWith<_$TvSeriesCreatorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
