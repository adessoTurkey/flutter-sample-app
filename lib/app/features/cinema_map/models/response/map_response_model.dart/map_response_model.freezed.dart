// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapResponseModel _$MapResponseModelFromJson(Map<String, dynamic> json) {
  return _MapResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MapResponseModel {
  List<PlaceResponseModel>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapResponseModelCopyWith<MapResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResponseModelCopyWith<$Res> {
  factory $MapResponseModelCopyWith(
          MapResponseModel value, $Res Function(MapResponseModel) then) =
      _$MapResponseModelCopyWithImpl<$Res, MapResponseModel>;
  @useResult
  $Res call({List<PlaceResponseModel>? places});
}

/// @nodoc
class _$MapResponseModelCopyWithImpl<$Res, $Val extends MapResponseModel>
    implements $MapResponseModelCopyWith<$Res> {
  _$MapResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapResponseModelImplCopyWith<$Res>
    implements $MapResponseModelCopyWith<$Res> {
  factory _$$MapResponseModelImplCopyWith(_$MapResponseModelImpl value,
          $Res Function(_$MapResponseModelImpl) then) =
      __$$MapResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceResponseModel>? places});
}

/// @nodoc
class __$$MapResponseModelImplCopyWithImpl<$Res>
    extends _$MapResponseModelCopyWithImpl<$Res, _$MapResponseModelImpl>
    implements _$$MapResponseModelImplCopyWith<$Res> {
  __$$MapResponseModelImplCopyWithImpl(_$MapResponseModelImpl _value,
      $Res Function(_$MapResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$MapResponseModelImpl(
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapResponseModelImpl implements _MapResponseModel {
  const _$MapResponseModelImpl({final List<PlaceResponseModel>? places})
      : _places = places;

  factory _$MapResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapResponseModelImplFromJson(json);

  final List<PlaceResponseModel>? _places;
  @override
  List<PlaceResponseModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapResponseModel(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapResponseModelImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapResponseModelImplCopyWith<_$MapResponseModelImpl> get copyWith =>
      __$$MapResponseModelImplCopyWithImpl<_$MapResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MapResponseModel implements MapResponseModel {
  const factory _MapResponseModel({final List<PlaceResponseModel>? places}) =
      _$MapResponseModelImpl;

  factory _MapResponseModel.fromJson(Map<String, dynamic> json) =
      _$MapResponseModelImpl.fromJson;

  @override
  List<PlaceResponseModel>? get places;
  @override
  @JsonKey(ignore: true)
  _$$MapResponseModelImplCopyWith<_$MapResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
