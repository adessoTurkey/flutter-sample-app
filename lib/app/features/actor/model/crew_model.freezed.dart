// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crew_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CrewModel _$CrewModelFromJson(Map<String, dynamic> json) {
  return _CrewModel.fromJson(json);
}

/// @nodoc
mixin _$CrewModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewModelCopyWith<CrewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewModelCopyWith<$Res> {
  factory $CrewModelCopyWith(CrewModel value, $Res Function(CrewModel) then) =
      _$CrewModelCopyWithImpl<$Res, CrewModel>;
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class _$CrewModelCopyWithImpl<$Res, $Val extends CrewModel>
    implements $CrewModelCopyWith<$Res> {
  _$CrewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrewModelImplCopyWith<$Res>
    implements $CrewModelCopyWith<$Res> {
  factory _$$CrewModelImplCopyWith(
          _$CrewModelImpl value, $Res Function(_$CrewModelImpl) then) =
      __$$CrewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$CrewModelImplCopyWithImpl<$Res>
    extends _$CrewModelCopyWithImpl<$Res, _$CrewModelImpl>
    implements _$$CrewModelImplCopyWith<$Res> {
  __$$CrewModelImplCopyWithImpl(
      _$CrewModelImpl _value, $Res Function(_$CrewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CrewModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrewModelImpl implements _CrewModel {
  const _$CrewModelImpl({this.name, this.id});

  factory _$CrewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrewModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'CrewModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrewModelImplCopyWith<_$CrewModelImpl> get copyWith =>
      __$$CrewModelImplCopyWithImpl<_$CrewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrewModelImplToJson(
      this,
    );
  }
}

abstract class _CrewModel implements CrewModel {
  const factory _CrewModel({final String? name, final int? id}) =
      _$CrewModelImpl;

  factory _CrewModel.fromJson(Map<String, dynamic> json) =
      _$CrewModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$CrewModelImplCopyWith<_$CrewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
