// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditResponse _$CreditResponseFromJson(Map<String, dynamic> json) {
  return _CreditResponse.fromJson(json);
}

/// @nodoc
mixin _$CreditResponse {
  int? get id => throw _privateConstructorUsedError;
  List<CastResults>? get cast => throw _privateConstructorUsedError;
  List<CrewResults>? get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditResponseCopyWith<CreditResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditResponseCopyWith<$Res> {
  factory $CreditResponseCopyWith(
          CreditResponse value, $Res Function(CreditResponse) then) =
      _$CreditResponseCopyWithImpl<$Res, CreditResponse>;
  @useResult
  $Res call({int? id, List<CastResults>? cast, List<CrewResults>? crew});
}

/// @nodoc
class _$CreditResponseCopyWithImpl<$Res, $Val extends CreditResponse>
    implements $CreditResponseCopyWith<$Res> {
  _$CreditResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastResults>?,
      crew: freezed == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CrewResults>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditResponseImplCopyWith<$Res>
    implements $CreditResponseCopyWith<$Res> {
  factory _$$CreditResponseImplCopyWith(_$CreditResponseImpl value,
          $Res Function(_$CreditResponseImpl) then) =
      __$$CreditResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<CastResults>? cast, List<CrewResults>? crew});
}

/// @nodoc
class __$$CreditResponseImplCopyWithImpl<$Res>
    extends _$CreditResponseCopyWithImpl<$Res, _$CreditResponseImpl>
    implements _$$CreditResponseImplCopyWith<$Res> {
  __$$CreditResponseImplCopyWithImpl(
      _$CreditResponseImpl _value, $Res Function(_$CreditResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$CreditResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastResults>?,
      crew: freezed == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CrewResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditResponseImpl implements _CreditResponse {
  const _$CreditResponseImpl(
      {this.id, final List<CastResults>? cast, final List<CrewResults>? crew})
      : _cast = cast,
        _crew = crew;

  factory _$CreditResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditResponseImplFromJson(json);

  @override
  final int? id;
  final List<CastResults>? _cast;
  @override
  List<CastResults>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CrewResults>? _crew;
  @override
  List<CrewResults>? get crew {
    final value = _crew;
    if (value == null) return null;
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditResponse(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditResponseImplCopyWith<_$CreditResponseImpl> get copyWith =>
      __$$CreditResponseImplCopyWithImpl<_$CreditResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditResponseImplToJson(
      this,
    );
  }
}

abstract class _CreditResponse implements CreditResponse {
  const factory _CreditResponse(
      {final int? id,
      final List<CastResults>? cast,
      final List<CrewResults>? crew}) = _$CreditResponseImpl;

  factory _CreditResponse.fromJson(Map<String, dynamic> json) =
      _$CreditResponseImpl.fromJson;

  @override
  int? get id;
  @override
  List<CastResults>? get cast;
  @override
  List<CrewResults>? get crew;
  @override
  @JsonKey(ignore: true)
  _$$CreditResponseImplCopyWith<_$CreditResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
