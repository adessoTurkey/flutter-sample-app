// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_delete_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionDeleteResponseModel _$SessionDeleteResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SessionDeleteResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SessionDeleteResponseModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDeleteResponseModelCopyWith<SessionDeleteResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDeleteResponseModelCopyWith<$Res> {
  factory $SessionDeleteResponseModelCopyWith(SessionDeleteResponseModel value,
          $Res Function(SessionDeleteResponseModel) then) =
      _$SessionDeleteResponseModelCopyWithImpl<$Res,
          SessionDeleteResponseModel>;
  @useResult
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$SessionDeleteResponseModelCopyWithImpl<$Res,
        $Val extends SessionDeleteResponseModel>
    implements $SessionDeleteResponseModelCopyWith<$Res> {
  _$SessionDeleteResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionDeleteResponseModelImplCopyWith<$Res>
    implements $SessionDeleteResponseModelCopyWith<$Res> {
  factory _$$SessionDeleteResponseModelImplCopyWith(
          _$SessionDeleteResponseModelImpl value,
          $Res Function(_$SessionDeleteResponseModelImpl) then) =
      __$$SessionDeleteResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$$SessionDeleteResponseModelImplCopyWithImpl<$Res>
    extends _$SessionDeleteResponseModelCopyWithImpl<$Res,
        _$SessionDeleteResponseModelImpl>
    implements _$$SessionDeleteResponseModelImplCopyWith<$Res> {
  __$$SessionDeleteResponseModelImplCopyWithImpl(
      _$SessionDeleteResponseModelImpl _value,
      $Res Function(_$SessionDeleteResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$SessionDeleteResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDeleteResponseModelImpl implements _SessionDeleteResponseModel {
  const _$SessionDeleteResponseModelImpl(
      {@JsonKey(name: "success") this.success});

  factory _$SessionDeleteResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionDeleteResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'SessionDeleteResponseModel(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDeleteResponseModelImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDeleteResponseModelImplCopyWith<_$SessionDeleteResponseModelImpl>
      get copyWith => __$$SessionDeleteResponseModelImplCopyWithImpl<
          _$SessionDeleteResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDeleteResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SessionDeleteResponseModel
    implements SessionDeleteResponseModel {
  const factory _SessionDeleteResponseModel(
          {@JsonKey(name: "success") final bool? success}) =
      _$SessionDeleteResponseModelImpl;

  factory _SessionDeleteResponseModel.fromJson(Map<String, dynamic> json) =
      _$SessionDeleteResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$SessionDeleteResponseModelImplCopyWith<_$SessionDeleteResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
