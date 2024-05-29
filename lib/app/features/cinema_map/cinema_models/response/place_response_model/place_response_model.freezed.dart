// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceResponseModel _$PlaceResponseModelFromJson(Map<String, dynamic> json) {
  return _PlaceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceResponseModel {
  String? get formattedAddress => throw _privateConstructorUsedError;
  PlaceDisplayNameModel? get displayName => throw _privateConstructorUsedError;
  PlaceLocationModel? get location => throw _privateConstructorUsedError;
  String? get websiteUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceResponseModelCopyWith<PlaceResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceResponseModelCopyWith<$Res> {
  factory $PlaceResponseModelCopyWith(
          PlaceResponseModel value, $Res Function(PlaceResponseModel) then) =
      _$PlaceResponseModelCopyWithImpl<$Res, PlaceResponseModel>;
  @useResult
  $Res call(
      {String? formattedAddress,
      PlaceDisplayNameModel? displayName,
      PlaceLocationModel? location,
      String? websiteUri});

  $PlaceDisplayNameModelCopyWith<$Res>? get displayName;
  $PlaceLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$PlaceResponseModelCopyWithImpl<$Res, $Val extends PlaceResponseModel>
    implements $PlaceResponseModelCopyWith<$Res> {
  _$PlaceResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? websiteUri = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as PlaceDisplayNameModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocationModel?,
      websiteUri: freezed == websiteUri
          ? _value.websiteUri
          : websiteUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceDisplayNameModelCopyWith<$Res>? get displayName {
    if (_value.displayName == null) {
      return null;
    }

    return $PlaceDisplayNameModelCopyWith<$Res>(_value.displayName!, (value) {
      return _then(_value.copyWith(displayName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceLocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PlaceLocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceResponseModelImplCopyWith<$Res>
    implements $PlaceResponseModelCopyWith<$Res> {
  factory _$$PlaceResponseModelImplCopyWith(_$PlaceResponseModelImpl value,
          $Res Function(_$PlaceResponseModelImpl) then) =
      __$$PlaceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? formattedAddress,
      PlaceDisplayNameModel? displayName,
      PlaceLocationModel? location,
      String? websiteUri});

  @override
  $PlaceDisplayNameModelCopyWith<$Res>? get displayName;
  @override
  $PlaceLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$PlaceResponseModelImplCopyWithImpl<$Res>
    extends _$PlaceResponseModelCopyWithImpl<$Res, _$PlaceResponseModelImpl>
    implements _$$PlaceResponseModelImplCopyWith<$Res> {
  __$$PlaceResponseModelImplCopyWithImpl(_$PlaceResponseModelImpl _value,
      $Res Function(_$PlaceResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? websiteUri = freezed,
  }) {
    return _then(_$PlaceResponseModelImpl(
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as PlaceDisplayNameModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocationModel?,
      websiteUri: freezed == websiteUri
          ? _value.websiteUri
          : websiteUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceResponseModelImpl implements _PlaceResponseModel {
  const _$PlaceResponseModelImpl(
      {this.formattedAddress,
      this.displayName,
      this.location,
      this.websiteUri});

  factory _$PlaceResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceResponseModelImplFromJson(json);

  @override
  final String? formattedAddress;
  @override
  final PlaceDisplayNameModel? displayName;
  @override
  final PlaceLocationModel? location;
  @override
  final String? websiteUri;

  @override
  String toString() {
    return 'PlaceResponseModel(formattedAddress: $formattedAddress, displayName: $displayName, location: $location, websiteUri: $websiteUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceResponseModelImpl &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.websiteUri, websiteUri) ||
                other.websiteUri == websiteUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, formattedAddress, displayName, location, websiteUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceResponseModelImplCopyWith<_$PlaceResponseModelImpl> get copyWith =>
      __$$PlaceResponseModelImplCopyWithImpl<_$PlaceResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceResponseModel implements PlaceResponseModel {
  const factory _PlaceResponseModel(
      {final String? formattedAddress,
      final PlaceDisplayNameModel? displayName,
      final PlaceLocationModel? location,
      final String? websiteUri}) = _$PlaceResponseModelImpl;

  factory _PlaceResponseModel.fromJson(Map<String, dynamic> json) =
      _$PlaceResponseModelImpl.fromJson;

  @override
  String? get formattedAddress;
  @override
  PlaceDisplayNameModel? get displayName;
  @override
  PlaceLocationModel? get location;
  @override
  String? get websiteUri;
  @override
  @JsonKey(ignore: true)
  _$$PlaceResponseModelImplCopyWith<_$PlaceResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
