// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResponse<Model> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<Model, $Res> {
  factory $NetworkResponseCopyWith(NetworkResponse<Model> value,
          $Res Function(NetworkResponse<Model>) then) =
      _$NetworkResponseCopyWithImpl<Model, $Res, NetworkResponse<Model>>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<Model, $Res,
        $Val extends NetworkResponse<Model>>
    implements $NetworkResponseCopyWith<Model, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkImplCopyWith<Model, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<Model> value, $Res Function(_$OkImpl<Model>) then) =
      __$$OkImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({Model data});
}

/// @nodoc
class __$$OkImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$OkImpl<Model>>
    implements _$$OkImplCopyWith<Model, $Res> {
  __$$OkImplCopyWithImpl(
      _$OkImpl<Model> _value, $Res Function(_$OkImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$OkImpl<Model>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc

class _$OkImpl<Model> implements Ok<Model> {
  const _$OkImpl(this.data);

  @override
  final Model data;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.ok(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<Model> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<Model, _$OkImpl<Model>> get copyWith =>
      __$$OkImplCopyWithImpl<Model, _$OkImpl<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<Model> implements NetworkResponse<Model> {
  const factory Ok(final Model data) = _$OkImpl<Model>;

  Model get data;
  @JsonKey(ignore: true)
  _$$OkImplCopyWith<Model, _$OkImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParametersImplCopyWith<Model, $Res> {
  factory _$$InvalidParametersImplCopyWith(_$InvalidParametersImpl<Model> value,
          $Res Function(_$InvalidParametersImpl<Model>) then) =
      __$$InvalidParametersImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$InvalidParametersImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res,
        _$InvalidParametersImpl<Model>>
    implements _$$InvalidParametersImplCopyWith<Model, $Res> {
  __$$InvalidParametersImplCopyWithImpl(_$InvalidParametersImpl<Model> _value,
      $Res Function(_$InvalidParametersImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$InvalidParametersImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidParametersImpl<Model> implements InvalidParameters<Model> {
  const _$InvalidParametersImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.invalidParameters(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParametersImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParametersImplCopyWith<Model, _$InvalidParametersImpl<Model>>
      get copyWith => __$$InvalidParametersImplCopyWithImpl<Model,
          _$InvalidParametersImpl<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return invalidParameters(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return invalidParameters?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class InvalidParameters<Model> implements NetworkResponse<Model> {
  const factory InvalidParameters(final int errorCode, final String message) =
      _$InvalidParametersImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$InvalidParametersImplCopyWith<Model, _$InvalidParametersImpl<Model>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAuthImplCopyWith<Model, $Res> {
  factory _$$NoAuthImplCopyWith(
          _$NoAuthImpl<Model> value, $Res Function(_$NoAuthImpl<Model>) then) =
      __$$NoAuthImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$NoAuthImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoAuthImpl<Model>>
    implements _$$NoAuthImplCopyWith<Model, $Res> {
  __$$NoAuthImplCopyWithImpl(
      _$NoAuthImpl<Model> _value, $Res Function(_$NoAuthImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$NoAuthImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAuthImpl<Model> implements NoAuth<Model> {
  const _$NoAuthImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.noAuth(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAuthImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAuthImplCopyWith<Model, _$NoAuthImpl<Model>> get copyWith =>
      __$$NoAuthImplCopyWithImpl<Model, _$NoAuthImpl<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return noAuth(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return noAuth?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class NoAuth<Model> implements NetworkResponse<Model> {
  const factory NoAuth(final int errorCode, final String message) =
      _$NoAuthImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$NoAuthImplCopyWith<Model, _$NoAuthImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccessImplCopyWith<Model, $Res> {
  factory _$$NoAccessImplCopyWith(_$NoAccessImpl<Model> value,
          $Res Function(_$NoAccessImpl<Model>) then) =
      __$$NoAccessImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$NoAccessImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoAccessImpl<Model>>
    implements _$$NoAccessImplCopyWith<Model, $Res> {
  __$$NoAccessImplCopyWithImpl(
      _$NoAccessImpl<Model> _value, $Res Function(_$NoAccessImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$NoAccessImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAccessImpl<Model> implements NoAccess<Model> {
  const _$NoAccessImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.noAccess(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAccessImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAccessImplCopyWith<Model, _$NoAccessImpl<Model>> get copyWith =>
      __$$NoAccessImplCopyWithImpl<Model, _$NoAccessImpl<Model>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return noAccess(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return noAccess?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(this);
    }
    return orElse();
  }
}

abstract class NoAccess<Model> implements NetworkResponse<Model> {
  const factory NoAccess(final int errorCode, final String message) =
      _$NoAccessImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$NoAccessImplCopyWith<Model, _$NoAccessImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<Model, $Res> {
  factory _$$BadRequestImplCopyWith(_$BadRequestImpl<Model> value,
          $Res Function(_$BadRequestImpl<Model>) then) =
      __$$BadRequestImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$BadRequestImpl<Model>>
    implements _$$BadRequestImplCopyWith<Model, $Res> {
  __$$BadRequestImplCopyWithImpl(_$BadRequestImpl<Model> _value,
      $Res Function(_$BadRequestImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$BadRequestImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl<Model> implements BadRequest<Model> {
  const _$BadRequestImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.badRequest(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<Model, _$BadRequestImpl<Model>> get copyWith =>
      __$$BadRequestImplCopyWithImpl<Model, _$BadRequestImpl<Model>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return badRequest(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return badRequest?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest<Model> implements NetworkResponse<Model> {
  const factory BadRequest(final int errorCode, final String message) =
      _$BadRequestImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<Model, _$BadRequestImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<Model, $Res> {
  factory _$$NotFoundImplCopyWith(_$NotFoundImpl<Model> value,
          $Res Function(_$NotFoundImpl<Model>) then) =
      __$$NotFoundImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NotFoundImpl<Model>>
    implements _$$NotFoundImplCopyWith<Model, $Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl<Model> _value, $Res Function(_$NotFoundImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$NotFoundImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl<Model> implements NotFound<Model> {
  const _$NotFoundImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.notFound(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<Model, _$NotFoundImpl<Model>> get copyWith =>
      __$$NotFoundImplCopyWithImpl<Model, _$NotFoundImpl<Model>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return notFound(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return notFound?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound<Model> implements NetworkResponse<Model> {
  const factory NotFound(final int errorCode, final String message) =
      _$NotFoundImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<Model, _$NotFoundImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictImplCopyWith<Model, $Res> {
  factory _$$ConflictImplCopyWith(_$ConflictImpl<Model> value,
          $Res Function(_$ConflictImpl<Model>) then) =
      __$$ConflictImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$ConflictImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$ConflictImpl<Model>>
    implements _$$ConflictImplCopyWith<Model, $Res> {
  __$$ConflictImplCopyWithImpl(
      _$ConflictImpl<Model> _value, $Res Function(_$ConflictImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$ConflictImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConflictImpl<Model> implements Conflict<Model> {
  const _$ConflictImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.conflict(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConflictImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictImplCopyWith<Model, _$ConflictImpl<Model>> get copyWith =>
      __$$ConflictImplCopyWithImpl<Model, _$ConflictImpl<Model>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return conflict(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return conflict?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict<Model> implements NetworkResponse<Model> {
  const factory Conflict(final int errorCode, final String message) =
      _$ConflictImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$ConflictImplCopyWith<Model, _$ConflictImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<Model, $Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl<Model> value, $Res Function(_$NoDataImpl<Model>) then) =
      __$$NoDataImplCopyWithImpl<Model, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<Model, $Res>
    extends _$NetworkResponseCopyWithImpl<Model, $Res, _$NoDataImpl<Model>>
    implements _$$NoDataImplCopyWith<Model, $Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl<Model> _value, $Res Function(_$NoDataImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$NoDataImpl<Model>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataImpl<Model> implements NoData<Model> {
  const _$NoDataImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$Model>.noData(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataImpl<Model> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataImplCopyWith<Model, _$NoDataImpl<Model>> get copyWith =>
      __$$NoDataImplCopyWithImpl<Model, _$NoDataImpl<Model>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Model data) ok,
    required TResult Function(int errorCode, String message) invalidParameters,
    required TResult Function(int errorCode, String message) noAuth,
    required TResult Function(int errorCode, String message) noAccess,
    required TResult Function(int errorCode, String message) badRequest,
    required TResult Function(int errorCode, String message) notFound,
    required TResult Function(int errorCode, String message) conflict,
    required TResult Function(int errorCode, String message) noData,
  }) {
    return noData(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Model data)? ok,
    TResult? Function(int errorCode, String message)? invalidParameters,
    TResult? Function(int errorCode, String message)? noAuth,
    TResult? Function(int errorCode, String message)? noAccess,
    TResult? Function(int errorCode, String message)? badRequest,
    TResult? Function(int errorCode, String message)? notFound,
    TResult? Function(int errorCode, String message)? conflict,
    TResult? Function(int errorCode, String message)? noData,
  }) {
    return noData?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Model data)? ok,
    TResult Function(int errorCode, String message)? invalidParameters,
    TResult Function(int errorCode, String message)? noAuth,
    TResult Function(int errorCode, String message)? noAccess,
    TResult Function(int errorCode, String message)? badRequest,
    TResult Function(int errorCode, String message)? notFound,
    TResult Function(int errorCode, String message)? conflict,
    TResult Function(int errorCode, String message)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Model> value) ok,
    required TResult Function(InvalidParameters<Model> value) invalidParameters,
    required TResult Function(NoAuth<Model> value) noAuth,
    required TResult Function(NoAccess<Model> value) noAccess,
    required TResult Function(BadRequest<Model> value) badRequest,
    required TResult Function(NotFound<Model> value) notFound,
    required TResult Function(Conflict<Model> value) conflict,
    required TResult Function(NoData<Model> value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Model> value)? ok,
    TResult? Function(InvalidParameters<Model> value)? invalidParameters,
    TResult? Function(NoAuth<Model> value)? noAuth,
    TResult? Function(NoAccess<Model> value)? noAccess,
    TResult? Function(BadRequest<Model> value)? badRequest,
    TResult? Function(NotFound<Model> value)? notFound,
    TResult? Function(Conflict<Model> value)? conflict,
    TResult? Function(NoData<Model> value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Model> value)? ok,
    TResult Function(InvalidParameters<Model> value)? invalidParameters,
    TResult Function(NoAuth<Model> value)? noAuth,
    TResult Function(NoAccess<Model> value)? noAccess,
    TResult Function(BadRequest<Model> value)? badRequest,
    TResult Function(NotFound<Model> value)? notFound,
    TResult Function(Conflict<Model> value)? conflict,
    TResult Function(NoData<Model> value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData<Model> implements NetworkResponse<Model> {
  const factory NoData(final int errorCode, final String message) =
      _$NoDataImpl<Model>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$NoDataImplCopyWith<Model, _$NoDataImpl<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}
