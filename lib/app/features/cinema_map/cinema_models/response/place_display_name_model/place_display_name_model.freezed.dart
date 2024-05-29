// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_display_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDisplayNameModel _$PlaceDisplayNameModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceDisplayNameModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceDisplayNameModel {
  String? get text => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDisplayNameModelCopyWith<PlaceDisplayNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDisplayNameModelCopyWith<$Res> {
  factory $PlaceDisplayNameModelCopyWith(PlaceDisplayNameModel value,
          $Res Function(PlaceDisplayNameModel) then) =
      _$PlaceDisplayNameModelCopyWithImpl<$Res, PlaceDisplayNameModel>;
  @useResult
  $Res call({String? text, String? languageCode});
}

/// @nodoc
class _$PlaceDisplayNameModelCopyWithImpl<$Res,
        $Val extends PlaceDisplayNameModel>
    implements $PlaceDisplayNameModelCopyWith<$Res> {
  _$PlaceDisplayNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDisplayNameModelImplCopyWith<$Res>
    implements $PlaceDisplayNameModelCopyWith<$Res> {
  factory _$$PlaceDisplayNameModelImplCopyWith(
          _$PlaceDisplayNameModelImpl value,
          $Res Function(_$PlaceDisplayNameModelImpl) then) =
      __$$PlaceDisplayNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? languageCode});
}

/// @nodoc
class __$$PlaceDisplayNameModelImplCopyWithImpl<$Res>
    extends _$PlaceDisplayNameModelCopyWithImpl<$Res,
        _$PlaceDisplayNameModelImpl>
    implements _$$PlaceDisplayNameModelImplCopyWith<$Res> {
  __$$PlaceDisplayNameModelImplCopyWithImpl(_$PlaceDisplayNameModelImpl _value,
      $Res Function(_$PlaceDisplayNameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_$PlaceDisplayNameModelImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDisplayNameModelImpl implements _PlaceDisplayNameModel {
  const _$PlaceDisplayNameModelImpl({this.text, this.languageCode});

  factory _$PlaceDisplayNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDisplayNameModelImplFromJson(json);

  @override
  final String? text;
  @override
  final String? languageCode;

  @override
  String toString() {
    return 'PlaceDisplayNameModel(text: $text, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDisplayNameModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDisplayNameModelImplCopyWith<_$PlaceDisplayNameModelImpl>
      get copyWith => __$$PlaceDisplayNameModelImplCopyWithImpl<
          _$PlaceDisplayNameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDisplayNameModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceDisplayNameModel implements PlaceDisplayNameModel {
  const factory _PlaceDisplayNameModel(
      {final String? text,
      final String? languageCode}) = _$PlaceDisplayNameModelImpl;

  factory _PlaceDisplayNameModel.fromJson(Map<String, dynamic> json) =
      _$PlaceDisplayNameModelImpl.fromJson;

  @override
  String? get text;
  @override
  String? get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDisplayNameModelImplCopyWith<_$PlaceDisplayNameModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
