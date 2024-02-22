// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResults _$VideoResultsFromJson(Map<String, dynamic> json) {
  return _VideoResults.fromJson(json);
}

/// @nodoc
mixin _$VideoResults {
  String? get key => throw _privateConstructorUsedError;
  bool? get offical => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultsCopyWith<VideoResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultsCopyWith<$Res> {
  factory $VideoResultsCopyWith(
          VideoResults value, $Res Function(VideoResults) then) =
      _$VideoResultsCopyWithImpl<$Res, VideoResults>;
  @useResult
  $Res call({String? key, bool? offical, String? id});
}

/// @nodoc
class _$VideoResultsCopyWithImpl<$Res, $Val extends VideoResults>
    implements $VideoResultsCopyWith<$Res> {
  _$VideoResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? offical = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      offical: freezed == offical
          ? _value.offical
          : offical // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResultsImplCopyWith<$Res>
    implements $VideoResultsCopyWith<$Res> {
  factory _$$VideoResultsImplCopyWith(
          _$VideoResultsImpl value, $Res Function(_$VideoResultsImpl) then) =
      __$$VideoResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, bool? offical, String? id});
}

/// @nodoc
class __$$VideoResultsImplCopyWithImpl<$Res>
    extends _$VideoResultsCopyWithImpl<$Res, _$VideoResultsImpl>
    implements _$$VideoResultsImplCopyWith<$Res> {
  __$$VideoResultsImplCopyWithImpl(
      _$VideoResultsImpl _value, $Res Function(_$VideoResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? offical = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VideoResultsImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      offical: freezed == offical
          ? _value.offical
          : offical // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResultsImpl implements _VideoResults {
  const _$VideoResultsImpl({this.key, this.offical, this.id});

  factory _$VideoResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResultsImplFromJson(json);

  @override
  final String? key;
  @override
  final bool? offical;
  @override
  final String? id;

  @override
  String toString() {
    return 'VideoResults(key: $key, offical: $offical, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResultsImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.offical, offical) || other.offical == offical) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, offical, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResultsImplCopyWith<_$VideoResultsImpl> get copyWith =>
      __$$VideoResultsImplCopyWithImpl<_$VideoResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResultsImplToJson(
      this,
    );
  }
}

abstract class _VideoResults implements VideoResults {
  const factory _VideoResults(
      {final String? key,
      final bool? offical,
      final String? id}) = _$VideoResultsImpl;

  factory _VideoResults.fromJson(Map<String, dynamic> json) =
      _$VideoResultsImpl.fromJson;

  @override
  String? get key;
  @override
  bool? get offical;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VideoResultsImplCopyWith<_$VideoResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
