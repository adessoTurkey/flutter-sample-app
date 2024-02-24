// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionResponseModel _$SessionResponseModelFromJson(Map<String, dynamic> json) {
  return _SessionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SessionResponseModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResponseModelCopyWith<$Res> {
  factory $SessionResponseModelCopyWith(SessionResponseModel value,
          $Res Function(SessionResponseModel) then) =
      _$SessionResponseModelCopyWithImpl<$Res, SessionResponseModel>;
}

/// @nodoc
class _$SessionResponseModelCopyWithImpl<$Res,
        $Val extends SessionResponseModel>
    implements $SessionResponseModelCopyWith<$Res> {
  _$SessionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionResponseModelImplCopyWith<$Res> {
  factory _$$SessionResponseModelImplCopyWith(_$SessionResponseModelImpl value,
          $Res Function(_$SessionResponseModelImpl) then) =
      __$$SessionResponseModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionResponseModelImplCopyWithImpl<$Res>
    extends _$SessionResponseModelCopyWithImpl<$Res, _$SessionResponseModelImpl>
    implements _$$SessionResponseModelImplCopyWith<$Res> {
  __$$SessionResponseModelImplCopyWithImpl(_$SessionResponseModelImpl _value,
      $Res Function(_$SessionResponseModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SessionResponseModelImpl implements _SessionResponseModel {
  const _$SessionResponseModelImpl();

  factory _$SessionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionResponseModelImplFromJson(json);

  @override
  String toString() {
    return 'SessionResponseModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResponseModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SessionResponseModel implements SessionResponseModel {
  const factory _SessionResponseModel() = _$SessionResponseModelImpl;

  factory _SessionResponseModel.fromJson(Map<String, dynamic> json) =
      _$SessionResponseModelImpl.fromJson;
}
