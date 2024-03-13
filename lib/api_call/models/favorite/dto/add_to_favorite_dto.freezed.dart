// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_favorite_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddToFavoriteDto _$AddToFavoriteDtoFromJson(Map<String, dynamic> json) {
  return _AddToFavoriteDto.fromJson(json);
}

/// @nodoc
mixin _$AddToFavoriteDto {
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "media_id")
  int? get favoriteId => throw _privateConstructorUsedError;
  @JsonKey(name: "favorite")
  bool? get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToFavoriteDtoCopyWith<AddToFavoriteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavoriteDtoCopyWith<$Res> {
  factory $AddToFavoriteDtoCopyWith(
          AddToFavoriteDto value, $Res Function(AddToFavoriteDto) then) =
      _$AddToFavoriteDtoCopyWithImpl<$Res, AddToFavoriteDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "media_id") int? favoriteId,
      @JsonKey(name: "favorite") bool? favorite});
}

/// @nodoc
class _$AddToFavoriteDtoCopyWithImpl<$Res, $Val extends AddToFavoriteDto>
    implements $AddToFavoriteDtoCopyWith<$Res> {
  _$AddToFavoriteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? favoriteId = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteId: freezed == favoriteId
          ? _value.favoriteId
          : favoriteId // ignore: cast_nullable_to_non_nullable
              as int?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddToFavoriteDtoImplCopyWith<$Res>
    implements $AddToFavoriteDtoCopyWith<$Res> {
  factory _$$AddToFavoriteDtoImplCopyWith(_$AddToFavoriteDtoImpl value,
          $Res Function(_$AddToFavoriteDtoImpl) then) =
      __$$AddToFavoriteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "media_id") int? favoriteId,
      @JsonKey(name: "favorite") bool? favorite});
}

/// @nodoc
class __$$AddToFavoriteDtoImplCopyWithImpl<$Res>
    extends _$AddToFavoriteDtoCopyWithImpl<$Res, _$AddToFavoriteDtoImpl>
    implements _$$AddToFavoriteDtoImplCopyWith<$Res> {
  __$$AddToFavoriteDtoImplCopyWithImpl(_$AddToFavoriteDtoImpl _value,
      $Res Function(_$AddToFavoriteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? favoriteId = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_$AddToFavoriteDtoImpl(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteId: freezed == favoriteId
          ? _value.favoriteId
          : favoriteId // ignore: cast_nullable_to_non_nullable
              as int?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToFavoriteDtoImpl implements _AddToFavoriteDto {
  const _$AddToFavoriteDtoImpl(
      {@JsonKey(name: "media_type") this.mediaType,
      @JsonKey(name: "media_id") this.favoriteId,
      @JsonKey(name: "favorite") this.favorite});

  factory _$AddToFavoriteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToFavoriteDtoImplFromJson(json);

  @override
  @JsonKey(name: "media_type")
  final String? mediaType;
  @override
  @JsonKey(name: "media_id")
  final int? favoriteId;
  @override
  @JsonKey(name: "favorite")
  final bool? favorite;

  @override
  String toString() {
    return 'AddToFavoriteDto(mediaType: $mediaType, favoriteId: $favoriteId, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoriteDtoImpl &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.favoriteId, favoriteId) ||
                other.favoriteId == favoriteId) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mediaType, favoriteId, favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavoriteDtoImplCopyWith<_$AddToFavoriteDtoImpl> get copyWith =>
      __$$AddToFavoriteDtoImplCopyWithImpl<_$AddToFavoriteDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToFavoriteDtoImplToJson(
      this,
    );
  }
}

abstract class _AddToFavoriteDto implements AddToFavoriteDto {
  const factory _AddToFavoriteDto(
          {@JsonKey(name: "media_type") final String? mediaType,
          @JsonKey(name: "media_id") final int? favoriteId,
          @JsonKey(name: "favorite") final bool? favorite}) =
      _$AddToFavoriteDtoImpl;

  factory _AddToFavoriteDto.fromJson(Map<String, dynamic> json) =
      _$AddToFavoriteDtoImpl.fromJson;

  @override
  @JsonKey(name: "media_type")
  String? get mediaType;
  @override
  @JsonKey(name: "media_id")
  int? get favoriteId;
  @override
  @JsonKey(name: "favorite")
  bool? get favorite;
  @override
  @JsonKey(ignore: true)
  _$$AddToFavoriteDtoImplCopyWith<_$AddToFavoriteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
