// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rated_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatedListResponse _$RatedListResponseFromJson(Map<String, dynamic> json) {
  return _RatedListResponse.fromJson(json);
}

/// @nodoc
mixin _$RatedListResponse {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatedListResponseCopyWith<RatedListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatedListResponseCopyWith<$Res> {
  factory $RatedListResponseCopyWith(
          RatedListResponse value, $Res Function(RatedListResponse) then) =
      _$RatedListResponseCopyWithImpl<$Res, RatedListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "rating") double? rating});
}

/// @nodoc
class _$RatedListResponseCopyWithImpl<$Res, $Val extends RatedListResponse>
    implements $RatedListResponseCopyWith<$Res> {
  _$RatedListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatedListResponseImplCopyWith<$Res>
    implements $RatedListResponseCopyWith<$Res> {
  factory _$$RatedListResponseImplCopyWith(_$RatedListResponseImpl value,
          $Res Function(_$RatedListResponseImpl) then) =
      __$$RatedListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "rating") double? rating});
}

/// @nodoc
class __$$RatedListResponseImplCopyWithImpl<$Res>
    extends _$RatedListResponseCopyWithImpl<$Res, _$RatedListResponseImpl>
    implements _$$RatedListResponseImplCopyWith<$Res> {
  __$$RatedListResponseImplCopyWithImpl(_$RatedListResponseImpl _value,
      $Res Function(_$RatedListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$RatedListResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatedListResponseImpl implements _RatedListResponse {
  const _$RatedListResponseImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "rating") this.rating});

  factory _$RatedListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatedListResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "rating")
  final double? rating;

  @override
  String toString() {
    return 'RatedListResponse(id: $id, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatedListResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatedListResponseImplCopyWith<_$RatedListResponseImpl> get copyWith =>
      __$$RatedListResponseImplCopyWithImpl<_$RatedListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatedListResponseImplToJson(
      this,
    );
  }
}

abstract class _RatedListResponse implements RatedListResponse {
  const factory _RatedListResponse(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "rating") final double? rating}) = _$RatedListResponseImpl;

  factory _RatedListResponse.fromJson(Map<String, dynamic> json) =
      _$RatedListResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$RatedListResponseImplCopyWith<_$RatedListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
