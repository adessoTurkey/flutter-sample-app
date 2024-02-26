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
  bool get success => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionResponseModelCopyWith<SessionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResponseModelCopyWith<$Res> {
  factory $SessionResponseModelCopyWith(SessionResponseModel value,
          $Res Function(SessionResponseModel) then) =
      _$SessionResponseModelCopyWithImpl<$Res, SessionResponseModel>;
  @useResult
  $Res call({bool success, String sessionId});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionResponseModelImplCopyWith<$Res>
    implements $SessionResponseModelCopyWith<$Res> {
  factory _$$SessionResponseModelImplCopyWith(_$SessionResponseModelImpl value,
          $Res Function(_$SessionResponseModelImpl) then) =
      __$$SessionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String sessionId});
}

/// @nodoc
class __$$SessionResponseModelImplCopyWithImpl<$Res>
    extends _$SessionResponseModelCopyWithImpl<$Res, _$SessionResponseModelImpl>
    implements _$$SessionResponseModelImplCopyWith<$Res> {
  __$$SessionResponseModelImplCopyWithImpl(_$SessionResponseModelImpl _value,
      $Res Function(_$SessionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? sessionId = null,
  }) {
    return _then(_$SessionResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionResponseModelImpl implements _SessionResponseModel {
  const _$SessionResponseModelImpl(
      {required this.success, required this.sessionId});

  factory _$SessionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String sessionId;

  @override
  String toString() {
    return 'SessionResponseModel(success: $success, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionResponseModelImplCopyWith<_$SessionResponseModelImpl>
      get copyWith =>
          __$$SessionResponseModelImplCopyWithImpl<_$SessionResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SessionResponseModel implements SessionResponseModel {
  const factory _SessionResponseModel(
      {required final bool success,
      required final String sessionId}) = _$SessionResponseModelImpl;

  factory _SessionResponseModel.fromJson(Map<String, dynamic> json) =
      _$SessionResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$SessionResponseModelImplCopyWith<_$SessionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
