// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoModelResponse _$VideoModelResponseFromJson(Map<String, dynamic> json) {
  return _VideoModelResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoModelResponse {
  int? get id => throw _privateConstructorUsedError;
  List<VideoResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelResponseCopyWith<VideoModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelResponseCopyWith<$Res> {
  factory $VideoModelResponseCopyWith(
          VideoModelResponse value, $Res Function(VideoModelResponse) then) =
      _$VideoModelResponseCopyWithImpl<$Res, VideoModelResponse>;
  @useResult
  $Res call({int? id, List<VideoResults>? results});
}

/// @nodoc
class _$VideoModelResponseCopyWithImpl<$Res, $Val extends VideoModelResponse>
    implements $VideoModelResponseCopyWith<$Res> {
  _$VideoModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResults>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoModelResponseImplCopyWith<$Res>
    implements $VideoModelResponseCopyWith<$Res> {
  factory _$$VideoModelResponseImplCopyWith(_$VideoModelResponseImpl value,
          $Res Function(_$VideoModelResponseImpl) then) =
      __$$VideoModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<VideoResults>? results});
}

/// @nodoc
class __$$VideoModelResponseImplCopyWithImpl<$Res>
    extends _$VideoModelResponseCopyWithImpl<$Res, _$VideoModelResponseImpl>
    implements _$$VideoModelResponseImplCopyWith<$Res> {
  __$$VideoModelResponseImplCopyWithImpl(_$VideoModelResponseImpl _value,
      $Res Function(_$VideoModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$VideoModelResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelResponseImpl implements _VideoModelResponse {
  const _$VideoModelResponseImpl({this.id, final List<VideoResults>? results})
      : _results = results;

  factory _$VideoModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelResponseImplFromJson(json);

  @override
  final int? id;
  final List<VideoResults>? _results;
  @override
  List<VideoResults>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoModelResponse(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelResponseImplCopyWith<_$VideoModelResponseImpl> get copyWith =>
      __$$VideoModelResponseImplCopyWithImpl<_$VideoModelResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelResponseImplToJson(
      this,
    );
  }
}

abstract class _VideoModelResponse implements VideoModelResponse {
  const factory _VideoModelResponse(
      {final int? id,
      final List<VideoResults>? results}) = _$VideoModelResponseImpl;

  factory _VideoModelResponse.fromJson(Map<String, dynamic> json) =
      _$VideoModelResponseImpl.fromJson;

  @override
  int? get id;
  @override
  List<VideoResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$VideoModelResponseImplCopyWith<_$VideoModelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
