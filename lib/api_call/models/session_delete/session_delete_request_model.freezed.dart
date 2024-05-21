// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_delete_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionDeleteRequestModel _$SessionDeleteRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SessionDeleteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SessionDeleteRequestModel {
  @JsonKey(name: "session_id")
  String? get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDeleteRequestModelCopyWith<SessionDeleteRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDeleteRequestModelCopyWith<$Res> {
  factory $SessionDeleteRequestModelCopyWith(SessionDeleteRequestModel value,
          $Res Function(SessionDeleteRequestModel) then) =
      _$SessionDeleteRequestModelCopyWithImpl<$Res, SessionDeleteRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "session_id") String? sessionId});
}

/// @nodoc
class _$SessionDeleteRequestModelCopyWithImpl<$Res,
        $Val extends SessionDeleteRequestModel>
    implements $SessionDeleteRequestModelCopyWith<$Res> {
  _$SessionDeleteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionDeleteRequestModelImplCopyWith<$Res>
    implements $SessionDeleteRequestModelCopyWith<$Res> {
  factory _$$SessionDeleteRequestModelImplCopyWith(
          _$SessionDeleteRequestModelImpl value,
          $Res Function(_$SessionDeleteRequestModelImpl) then) =
      __$$SessionDeleteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "session_id") String? sessionId});
}

/// @nodoc
class __$$SessionDeleteRequestModelImplCopyWithImpl<$Res>
    extends _$SessionDeleteRequestModelCopyWithImpl<$Res,
        _$SessionDeleteRequestModelImpl>
    implements _$$SessionDeleteRequestModelImplCopyWith<$Res> {
  __$$SessionDeleteRequestModelImplCopyWithImpl(
      _$SessionDeleteRequestModelImpl _value,
      $Res Function(_$SessionDeleteRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_$SessionDeleteRequestModelImpl(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDeleteRequestModelImpl implements _SessionDeleteRequestModel {
  const _$SessionDeleteRequestModelImpl(
      {@JsonKey(name: "session_id") this.sessionId});

  factory _$SessionDeleteRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDeleteRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "session_id")
  final String? sessionId;

  @override
  String toString() {
    return 'SessionDeleteRequestModel(sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDeleteRequestModelImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDeleteRequestModelImplCopyWith<_$SessionDeleteRequestModelImpl>
      get copyWith => __$$SessionDeleteRequestModelImplCopyWithImpl<
          _$SessionDeleteRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDeleteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SessionDeleteRequestModel implements SessionDeleteRequestModel {
  const factory _SessionDeleteRequestModel(
          {@JsonKey(name: "session_id") final String? sessionId}) =
      _$SessionDeleteRequestModelImpl;

  factory _SessionDeleteRequestModel.fromJson(Map<String, dynamic> json) =
      _$SessionDeleteRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "session_id")
  String? get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$SessionDeleteRequestModelImplCopyWith<_$SessionDeleteRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
