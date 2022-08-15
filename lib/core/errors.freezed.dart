// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppExceptions {
  String? get message => throw _privateConstructorUsedError;
  Exception? get e => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionsCopyWith<AppExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionsCopyWith<$Res> {
  factory $AppExceptionsCopyWith(
          AppExceptions value, $Res Function(AppExceptions) then) =
      _$AppExceptionsCopyWithImpl<$Res>;
  $Res call({String? message, Exception? e});
}

/// @nodoc
class _$AppExceptionsCopyWithImpl<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  _$AppExceptionsCopyWithImpl(this._value, this._then);

  final AppExceptions _value;
  // ignore: unused_field
  final $Res Function(AppExceptions) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppExceptionsCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_AppExceptionsCopyWith(
          _$_AppExceptions value, $Res Function(_$_AppExceptions) then) =
      __$$_AppExceptionsCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_AppExceptionsCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_AppExceptionsCopyWith<$Res> {
  __$$_AppExceptionsCopyWithImpl(
      _$_AppExceptions _value, $Res Function(_$_AppExceptions) _then)
      : super(_value, (v) => _then(v as _$_AppExceptions));

  @override
  _$_AppExceptions get _value => super._value as _$_AppExceptions;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_AppExceptions(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_AppExceptions implements _AppExceptions {
  _$_AppExceptions({this.message, this.e});

  @override
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppExceptions &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_AppExceptionsCopyWith<_$_AppExceptions> get copyWith =>
      __$$_AppExceptionsCopyWithImpl<_$_AppExceptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return $default(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return $default?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppExceptions implements AppExceptions {
  factory _AppExceptions({final String? message, final Exception? e}) =
      _$_AppExceptions;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_AppExceptionsCopyWith<_$_AppExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_networkExceptionCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_networkExceptionCopyWith(
          _$_networkException value, $Res Function(_$_networkException) then) =
      __$$_networkExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_networkExceptionCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_networkExceptionCopyWith<$Res> {
  __$$_networkExceptionCopyWithImpl(
      _$_networkException _value, $Res Function(_$_networkException) _then)
      : super(_value, (v) => _then(v as _$_networkException));

  @override
  _$_networkException get _value => super._value as _$_networkException;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_networkException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_networkException implements _networkException {
  _$_networkException({this.message = "network Error", this.e});

  @override
  @JsonKey()
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.networkException(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_networkException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_networkExceptionCopyWith<_$_networkException> get copyWith =>
      __$$_networkExceptionCopyWithImpl<_$_networkException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return networkException(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return networkException?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return networkException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return networkException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(this);
    }
    return orElse();
  }
}

abstract class _networkException implements AppExceptions {
  factory _networkException({final String? message, final Exception? e}) =
      _$_networkException;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_networkExceptionCopyWith<_$_networkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_noInternetExceptionCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_noInternetExceptionCopyWith(_$_noInternetException value,
          $Res Function(_$_noInternetException) then) =
      __$$_noInternetExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_noInternetExceptionCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_noInternetExceptionCopyWith<$Res> {
  __$$_noInternetExceptionCopyWithImpl(_$_noInternetException _value,
      $Res Function(_$_noInternetException) _then)
      : super(_value, (v) => _then(v as _$_noInternetException));

  @override
  _$_noInternetException get _value => super._value as _$_noInternetException;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_noInternetException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_noInternetException implements _noInternetException {
  _$_noInternetException({this.message = "No internet", this.e});

  @override
  @JsonKey()
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.noInternetException(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_noInternetException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_noInternetExceptionCopyWith<_$_noInternetException> get copyWith =>
      __$$_noInternetExceptionCopyWithImpl<_$_noInternetException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return noInternetException(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return noInternetException?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (noInternetException != null) {
      return noInternetException(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return noInternetException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return noInternetException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (noInternetException != null) {
      return noInternetException(this);
    }
    return orElse();
  }
}

abstract class _noInternetException implements AppExceptions {
  factory _noInternetException({final String? message, final Exception? e}) =
      _$_noInternetException;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_noInternetExceptionCopyWith<_$_noInternetException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerNotOnlieCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_ServerNotOnlieCopyWith(
          _$_ServerNotOnlie value, $Res Function(_$_ServerNotOnlie) then) =
      __$$_ServerNotOnlieCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_ServerNotOnlieCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_ServerNotOnlieCopyWith<$Res> {
  __$$_ServerNotOnlieCopyWithImpl(
      _$_ServerNotOnlie _value, $Res Function(_$_ServerNotOnlie) _then)
      : super(_value, (v) => _then(v as _$_ServerNotOnlie));

  @override
  _$_ServerNotOnlie get _value => super._value as _$_ServerNotOnlie;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_ServerNotOnlie(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ServerNotOnlie implements _ServerNotOnlie {
  _$_ServerNotOnlie({this.message = "Server Not online", this.e});

  @override
  @JsonKey()
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.serverNotOnlie(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerNotOnlie &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_ServerNotOnlieCopyWith<_$_ServerNotOnlie> get copyWith =>
      __$$_ServerNotOnlieCopyWithImpl<_$_ServerNotOnlie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return serverNotOnlie(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return serverNotOnlie?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (serverNotOnlie != null) {
      return serverNotOnlie(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return serverNotOnlie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return serverNotOnlie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (serverNotOnlie != null) {
      return serverNotOnlie(this);
    }
    return orElse();
  }
}

abstract class _ServerNotOnlie implements AppExceptions {
  factory _ServerNotOnlie({final String? message, final Exception? e}) =
      _$_ServerNotOnlie;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_ServerNotOnlieCopyWith<_$_ServerNotOnlie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_statusCodeNot200CopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_statusCodeNot200CopyWith(
          _$_statusCodeNot200 value, $Res Function(_$_statusCodeNot200) then) =
      __$$_statusCodeNot200CopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_statusCodeNot200CopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_statusCodeNot200CopyWith<$Res> {
  __$$_statusCodeNot200CopyWithImpl(
      _$_statusCodeNot200 _value, $Res Function(_$_statusCodeNot200) _then)
      : super(_value, (v) => _then(v as _$_statusCodeNot200));

  @override
  _$_statusCodeNot200 get _value => super._value as _$_statusCodeNot200;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_statusCodeNot200(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_statusCodeNot200 implements _statusCodeNot200 {
  _$_statusCodeNot200({this.message, this.e});

  @override
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.statusCodeNot200(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_statusCodeNot200 &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_statusCodeNot200CopyWith<_$_statusCodeNot200> get copyWith =>
      __$$_statusCodeNot200CopyWithImpl<_$_statusCodeNot200>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return statusCodeNot200(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return statusCodeNot200?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (statusCodeNot200 != null) {
      return statusCodeNot200(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return statusCodeNot200(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return statusCodeNot200?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (statusCodeNot200 != null) {
      return statusCodeNot200(this);
    }
    return orElse();
  }
}

abstract class _statusCodeNot200 implements AppExceptions {
  factory _statusCodeNot200({final String? message, final Exception? e}) =
      _$_statusCodeNot200;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_statusCodeNot200CopyWith<_$_statusCodeNot200> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_apiSendsErrorStatusCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_apiSendsErrorStatusCopyWith(_$_apiSendsErrorStatus value,
          $Res Function(_$_apiSendsErrorStatus) then) =
      __$$_apiSendsErrorStatusCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_apiSendsErrorStatusCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_apiSendsErrorStatusCopyWith<$Res> {
  __$$_apiSendsErrorStatusCopyWithImpl(_$_apiSendsErrorStatus _value,
      $Res Function(_$_apiSendsErrorStatus) _then)
      : super(_value, (v) => _then(v as _$_apiSendsErrorStatus));

  @override
  _$_apiSendsErrorStatus get _value => super._value as _$_apiSendsErrorStatus;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_apiSendsErrorStatus(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_apiSendsErrorStatus implements _apiSendsErrorStatus {
  _$_apiSendsErrorStatus({this.message, this.e});

  @override
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.apiSendsErrorStatus(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_apiSendsErrorStatus &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_apiSendsErrorStatusCopyWith<_$_apiSendsErrorStatus> get copyWith =>
      __$$_apiSendsErrorStatusCopyWithImpl<_$_apiSendsErrorStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return apiSendsErrorStatus(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return apiSendsErrorStatus?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (apiSendsErrorStatus != null) {
      return apiSendsErrorStatus(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return apiSendsErrorStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return apiSendsErrorStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (apiSendsErrorStatus != null) {
      return apiSendsErrorStatus(this);
    }
    return orElse();
  }
}

abstract class _apiSendsErrorStatus implements AppExceptions {
  factory _apiSendsErrorStatus({final String? message, final Exception? e}) =
      _$_apiSendsErrorStatus;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_apiSendsErrorStatusCopyWith<_$_apiSendsErrorStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_appAuthExceptionCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_appAuthExceptionCopyWith(
          _$_appAuthException value, $Res Function(_$_appAuthException) then) =
      __$$_appAuthExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_appAuthExceptionCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_appAuthExceptionCopyWith<$Res> {
  __$$_appAuthExceptionCopyWithImpl(
      _$_appAuthException _value, $Res Function(_$_appAuthException) _then)
      : super(_value, (v) => _then(v as _$_appAuthException));

  @override
  _$_appAuthException get _value => super._value as _$_appAuthException;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_appAuthException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_appAuthException implements _appAuthException {
  _$_appAuthException({this.message, this.e});

  @override
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.appAuthException(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_appAuthException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_appAuthExceptionCopyWith<_$_appAuthException> get copyWith =>
      __$$_appAuthExceptionCopyWithImpl<_$_appAuthException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return appAuthException(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return appAuthException?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (appAuthException != null) {
      return appAuthException(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return appAuthException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return appAuthException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (appAuthException != null) {
      return appAuthException(this);
    }
    return orElse();
  }
}

abstract class _appAuthException implements AppExceptions {
  factory _appAuthException({final String? message, final Exception? e}) =
      _$_appAuthException;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_appAuthExceptionCopyWith<_$_appAuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Exception? e});
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, (v) => _then(v as _$_ServerException));

  @override
  _$_ServerException get _value => super._value as _$_ServerException;

  @override
  $Res call({
    Object? message = freezed,
    Object? e = freezed,
  }) {
    return _then(_$_ServerException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  _$_ServerException({this.message = "Invalid operation", this.e});

  @override
  @JsonKey()
  final String? message;
  @override
  final Exception? e;

  @override
  String toString() {
    return 'AppExceptions.serverException(message: $message, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      __$$_ServerExceptionCopyWithImpl<_$_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, Exception? e) $default, {
    required TResult Function(String? message, Exception? e) networkException,
    required TResult Function(String? message, Exception? e)
        noInternetException,
    required TResult Function(String? message, Exception? e) serverNotOnlie,
    required TResult Function(String? message, Exception? e) statusCodeNot200,
    required TResult Function(String? message, Exception? e)
        apiSendsErrorStatus,
    required TResult Function(String? message, Exception? e) appAuthException,
    required TResult Function(String? message, Exception? e) serverException,
  }) {
    return serverException(message, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
  }) {
    return serverException?.call(message, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, Exception? e)? $default, {
    TResult Function(String? message, Exception? e)? networkException,
    TResult Function(String? message, Exception? e)? noInternetException,
    TResult Function(String? message, Exception? e)? serverNotOnlie,
    TResult Function(String? message, Exception? e)? statusCodeNot200,
    TResult Function(String? message, Exception? e)? apiSendsErrorStatus,
    TResult Function(String? message, Exception? e)? appAuthException,
    TResult Function(String? message, Exception? e)? serverException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_noInternetException value) noInternetException,
    required TResult Function(_ServerNotOnlie value) serverNotOnlie,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
    required TResult Function(_appAuthException value) appAuthException,
    required TResult Function(_ServerException value) serverException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_noInternetException value)? noInternetException,
    TResult Function(_ServerNotOnlie value)? serverNotOnlie,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    TResult Function(_appAuthException value)? appAuthException,
    TResult Function(_ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements AppExceptions {
  factory _ServerException({final String? message, final Exception? e}) =
      _$_ServerException;

  @override
  String? get message;
  @override
  Exception? get e;
  @override
  @JsonKey(ignore: true)
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}
