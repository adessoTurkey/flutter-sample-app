// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountDetail _$AccountDetailFromJson(Map<String, dynamic> json) {
  return _AccountDetail.fromJson(json);
}

/// @nodoc
mixin _$AccountDetail {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "iso_639_1")
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: "iso_3166_1")
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "include_adult")
  bool? get includeAdult => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDetailCopyWith<AccountDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailCopyWith<$Res> {
  factory $AccountDetailCopyWith(
          AccountDetail value, $Res Function(AccountDetail) then) =
      _$AccountDetailCopyWithImpl<$Res, AccountDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "iso_3166_1") String? iso31661,
      String? name,
      @JsonKey(name: "include_adult") bool? includeAdult,
      String? username});
}

/// @nodoc
class _$AccountDetailCopyWithImpl<$Res, $Val extends AccountDetail>
    implements $AccountDetailCopyWith<$Res> {
  _$AccountDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? includeAdult = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: freezed == includeAdult
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDetailImplCopyWith<$Res>
    implements $AccountDetailCopyWith<$Res> {
  factory _$$AccountDetailImplCopyWith(
          _$AccountDetailImpl value, $Res Function(_$AccountDetailImpl) then) =
      __$$AccountDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "iso_639_1") String? iso6391,
      @JsonKey(name: "iso_3166_1") String? iso31661,
      String? name,
      @JsonKey(name: "include_adult") bool? includeAdult,
      String? username});
}

/// @nodoc
class __$$AccountDetailImplCopyWithImpl<$Res>
    extends _$AccountDetailCopyWithImpl<$Res, _$AccountDetailImpl>
    implements _$$AccountDetailImplCopyWith<$Res> {
  __$$AccountDetailImplCopyWithImpl(
      _$AccountDetailImpl _value, $Res Function(_$AccountDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? includeAdult = freezed,
    Object? username = freezed,
  }) {
    return _then(_$AccountDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: freezed == includeAdult
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailImpl implements _AccountDetail {
  const _$AccountDetailImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "iso_639_1") this.iso6391,
      @JsonKey(name: "iso_3166_1") this.iso31661,
      this.name,
      @JsonKey(name: "include_adult") this.includeAdult,
      this.username});

  factory _$AccountDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "iso_639_1")
  final String? iso6391;
  @override
  @JsonKey(name: "iso_3166_1")
  final String? iso31661;
  @override
  final String? name;
  @override
  @JsonKey(name: "include_adult")
  final bool? includeAdult;
  @override
  final String? username;

  @override
  String toString() {
    return 'AccountDetail(id: $id, iso6391: $iso6391, iso31661: $iso31661, name: $name, includeAdult: $includeAdult, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.includeAdult, includeAdult) ||
                other.includeAdult == includeAdult) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, iso6391, iso31661, name, includeAdult, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailImplCopyWith<_$AccountDetailImpl> get copyWith =>
      __$$AccountDetailImplCopyWithImpl<_$AccountDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailImplToJson(
      this,
    );
  }
}

abstract class _AccountDetail implements AccountDetail {
  const factory _AccountDetail(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "iso_639_1") final String? iso6391,
      @JsonKey(name: "iso_3166_1") final String? iso31661,
      final String? name,
      @JsonKey(name: "include_adult") final bool? includeAdult,
      final String? username}) = _$AccountDetailImpl;

  factory _AccountDetail.fromJson(Map<String, dynamic> json) =
      _$AccountDetailImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "iso_639_1")
  String? get iso6391;
  @override
  @JsonKey(name: "iso_3166_1")
  String? get iso31661;
  @override
  String? get name;
  @override
  @JsonKey(name: "include_adult")
  bool? get includeAdult;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$AccountDetailImplCopyWith<_$AccountDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
