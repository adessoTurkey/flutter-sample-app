// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionRequestModel _$SessionRequestModelFromJson(Map<String, dynamic> json) {
  return _SessionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SessionRequestModel {
  @JsonKey(name: "request_token")
  String get requestToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionRequestModelCopyWith<SessionRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRequestModelCopyWith<$Res> {
  factory $SessionRequestModelCopyWith(
          SessionRequestModel value, $Res Function(SessionRequestModel) then) =
      _$SessionRequestModelCopyWithImpl<$Res, SessionRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "request_token") String requestToken});
}

/// @nodoc
class _$SessionRequestModelCopyWithImpl<$Res, $Val extends SessionRequestModel>
    implements $SessionRequestModelCopyWith<$Res> {
  _$SessionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestToken = null,
  }) {
    return _then(_value.copyWith(
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionRequestModelImplCopyWith<$Res>
    implements $SessionRequestModelCopyWith<$Res> {
  factory _$$SessionRequestModelImplCopyWith(_$SessionRequestModelImpl value,
          $Res Function(_$SessionRequestModelImpl) then) =
      __$$SessionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "request_token") String requestToken});
}

/// @nodoc
class __$$SessionRequestModelImplCopyWithImpl<$Res>
    extends _$SessionRequestModelCopyWithImpl<$Res, _$SessionRequestModelImpl>
    implements _$$SessionRequestModelImplCopyWith<$Res> {
  __$$SessionRequestModelImplCopyWithImpl(_$SessionRequestModelImpl _value,
      $Res Function(_$SessionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestToken = null,
  }) {
    return _then(_$SessionRequestModelImpl(
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRequestModelImpl implements _SessionRequestModel {
  const _$SessionRequestModelImpl(
      {@JsonKey(name: "request_token") required this.requestToken});

  factory _$SessionRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "request_token")
  final String requestToken;

  @override
  String toString() {
    return 'SessionRequestModel(requestToken: $requestToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRequestModelImpl &&
            (identical(other.requestToken, requestToken) ||
                other.requestToken == requestToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRequestModelImplCopyWith<_$SessionRequestModelImpl> get copyWith =>
      __$$SessionRequestModelImplCopyWithImpl<_$SessionRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SessionRequestModel implements SessionRequestModel {
  const factory _SessionRequestModel(
      {@JsonKey(name: "request_token")
      required final String requestToken}) = _$SessionRequestModelImpl;

  factory _SessionRequestModel.fromJson(Map<String, dynamic> json) =
      _$SessionRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "request_token")
  String get requestToken;
  @override
  @JsonKey(ignore: true)
  _$$SessionRequestModelImplCopyWith<_$SessionRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
