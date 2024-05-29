// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActorDetailModel _$ActorDetailModelFromJson(Map<String, dynamic> json) {
  return _ActorDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ActorDetailModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "biography")
  String? get biography => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "place_of_birth")
  String? get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorDetailModelCopyWith<ActorDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorDetailModelCopyWith<$Res> {
  factory $ActorDetailModelCopyWith(
          ActorDetailModel value, $Res Function(ActorDetailModel) then) =
      _$ActorDetailModelCopyWithImpl<$Res, ActorDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "biography") String? biography,
      @JsonKey(name: "birthday") String? birthday,
      @JsonKey(name: "place_of_birth") String? placeOfBirth,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class _$ActorDetailModelCopyWithImpl<$Res, $Val extends ActorDetailModel>
    implements $ActorDetailModelCopyWith<$Res> {
  _$ActorDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? placeOfBirth = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorDetailModelImplCopyWith<$Res>
    implements $ActorDetailModelCopyWith<$Res> {
  factory _$$ActorDetailModelImplCopyWith(_$ActorDetailModelImpl value,
          $Res Function(_$ActorDetailModelImpl) then) =
      __$$ActorDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "biography") String? biography,
      @JsonKey(name: "birthday") String? birthday,
      @JsonKey(name: "place_of_birth") String? placeOfBirth,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class __$$ActorDetailModelImplCopyWithImpl<$Res>
    extends _$ActorDetailModelCopyWithImpl<$Res, _$ActorDetailModelImpl>
    implements _$$ActorDetailModelImplCopyWith<$Res> {
  __$$ActorDetailModelImplCopyWithImpl(_$ActorDetailModelImpl _value,
      $Res Function(_$ActorDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? placeOfBirth = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$ActorDetailModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
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
class _$ActorDetailModelImpl implements _ActorDetailModel {
  const _$ActorDetailModelImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "biography") this.biography,
      @JsonKey(name: "birthday") this.birthday,
      @JsonKey(name: "place_of_birth") this.placeOfBirth,
      @JsonKey(name: "profile_path") this.profilePath});

  factory _$ActorDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "biography")
  final String? biography;
  @override
  @JsonKey(name: "birthday")
  final String? birthday;
  @override
  @JsonKey(name: "place_of_birth")
  final String? placeOfBirth;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;

  @override
  String toString() {
    return 'ActorDetailModel(name: $name, biography: $biography, birthday: $birthday, placeOfBirth: $placeOfBirth, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, biography, birthday, placeOfBirth, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorDetailModelImplCopyWith<_$ActorDetailModelImpl> get copyWith =>
      __$$ActorDetailModelImplCopyWithImpl<_$ActorDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ActorDetailModel implements ActorDetailModel {
  const factory _ActorDetailModel(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "biography") final String? biography,
          @JsonKey(name: "birthday") final String? birthday,
          @JsonKey(name: "place_of_birth") final String? placeOfBirth,
          @JsonKey(name: "profile_path") final String? profilePath}) =
      _$ActorDetailModelImpl;

  factory _ActorDetailModel.fromJson(Map<String, dynamic> json) =
      _$ActorDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "biography")
  String? get biography;
  @override
  @JsonKey(name: "birthday")
  String? get birthday;
  @override
  @JsonKey(name: "place_of_birth")
  String? get placeOfBirth;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$ActorDetailModelImplCopyWith<_$ActorDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
