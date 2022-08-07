// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInScreenEventCopyWith<$Res> {
  factory $SignInScreenEventCopyWith(
          SignInScreenEvent value, $Res Function(SignInScreenEvent) then) =
      _$SignInScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInScreenEventCopyWithImpl<$Res>
    implements $SignInScreenEventCopyWith<$Res> {
  _$SignInScreenEventCopyWithImpl(this._value, this._then);

  final SignInScreenEvent _value;
  // ignore: unused_field
  final $Res Function(SignInScreenEvent) _then;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInScreenEventCopyWithImpl<$Res>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _$_SignInWithGoogle));

  @override
  _$_SignInWithGoogle get _value => super._value as _$_SignInWithGoogle;
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInScreenEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInScreenEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$$_SignInWithEmailCopyWith<$Res> {
  factory _$$_SignInWithEmailCopyWith(
          _$_SignInWithEmail value, $Res Function(_$_SignInWithEmail) then) =
      __$$_SignInWithEmailCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailCopyWithImpl<$Res>
    extends _$SignInScreenEventCopyWithImpl<$Res>
    implements _$$_SignInWithEmailCopyWith<$Res> {
  __$$_SignInWithEmailCopyWithImpl(
      _$_SignInWithEmail _value, $Res Function(_$_SignInWithEmail) _then)
      : super(_value, (v) => _then(v as _$_SignInWithEmail));

  @override
  _$_SignInWithEmail get _value => super._value as _$_SignInWithEmail;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInWithEmail(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmail implements _SignInWithEmail {
  const _$_SignInWithEmail({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInScreenEvent.signInWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmail &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInWithEmailCopyWith<_$_SignInWithEmail> get copyWith =>
      __$$_SignInWithEmailCopyWithImpl<_$_SignInWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmail implements SignInScreenEvent {
  const factory _SignInWithEmail(
      {required final String email,
      required final String password}) = _$_SignInWithEmail;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailCopyWith<_$_SignInWithEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInAnonyouslyCopyWith<$Res> {
  factory _$$_SignInAnonyouslyCopyWith(
          _$_SignInAnonyously value, $Res Function(_$_SignInAnonyously) then) =
      __$$_SignInAnonyouslyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInAnonyouslyCopyWithImpl<$Res>
    extends _$SignInScreenEventCopyWithImpl<$Res>
    implements _$$_SignInAnonyouslyCopyWith<$Res> {
  __$$_SignInAnonyouslyCopyWithImpl(
      _$_SignInAnonyously _value, $Res Function(_$_SignInAnonyously) _then)
      : super(_value, (v) => _then(v as _$_SignInAnonyously));

  @override
  _$_SignInAnonyously get _value => super._value as _$_SignInAnonyously;
}

/// @nodoc

class _$_SignInAnonyously implements _SignInAnonyously {
  const _$_SignInAnonyously();

  @override
  String toString() {
    return 'SignInScreenEvent.signInAnonyously()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInAnonyously);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInAnonyously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInAnonyously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInAnonyously != null) {
      return signInAnonyously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInAnonyously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInAnonyously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) {
    if (signInAnonyously != null) {
      return signInAnonyously(this);
    }
    return orElse();
  }
}

abstract class _SignInAnonyously implements SignInScreenEvent {
  const factory _SignInAnonyously() = _$_SignInAnonyously;
}

/// @nodoc
mixin _$SignInScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() completed,
    required TResult Function(AppExceptions appExceptions) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Exception value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInScreenStateCopyWith<$Res> {
  factory $SignInScreenStateCopyWith(
          SignInScreenState value, $Res Function(SignInScreenState) then) =
      _$SignInScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInScreenStateCopyWithImpl<$Res>
    implements $SignInScreenStateCopyWith<$Res> {
  _$SignInScreenStateCopyWithImpl(this._value, this._then);

  final SignInScreenState _value;
  // ignore: unused_field
  final $Res Function(SignInScreenState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignInScreenStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignInScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() completed,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Exception value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SignInScreenStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SignInScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() completed,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Exception value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignInScreenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$SignInScreenStateCopyWithImpl<$Res>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, (v) => _then(v as _$_Completed));

  @override
  _$_Completed get _value => super._value as _$_Completed;
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed();

  @override
  String toString() {
    return 'SignInScreenState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() completed,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Exception value) exception,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements SignInScreenState {
  const factory _Completed() = _$_Completed;
}

/// @nodoc
abstract class _$$_ExceptionCopyWith<$Res> {
  factory _$$_ExceptionCopyWith(
          _$_Exception value, $Res Function(_$_Exception) then) =
      __$$_ExceptionCopyWithImpl<$Res>;
  $Res call({AppExceptions appExceptions});

  $AppExceptionsCopyWith<$Res> get appExceptions;
}

/// @nodoc
class __$$_ExceptionCopyWithImpl<$Res>
    extends _$SignInScreenStateCopyWithImpl<$Res>
    implements _$$_ExceptionCopyWith<$Res> {
  __$$_ExceptionCopyWithImpl(
      _$_Exception _value, $Res Function(_$_Exception) _then)
      : super(_value, (v) => _then(v as _$_Exception));

  @override
  _$_Exception get _value => super._value as _$_Exception;

  @override
  $Res call({
    Object? appExceptions = freezed,
  }) {
    return _then(_$_Exception(
      appExceptions: appExceptions == freezed
          ? _value.appExceptions
          : appExceptions // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
    ));
  }

  @override
  $AppExceptionsCopyWith<$Res> get appExceptions {
    return $AppExceptionsCopyWith<$Res>(_value.appExceptions, (value) {
      return _then(_value.copyWith(appExceptions: value));
    });
  }
}

/// @nodoc

class _$_Exception implements _Exception {
  const _$_Exception({required this.appExceptions});

  @override
  final AppExceptions appExceptions;

  @override
  String toString() {
    return 'SignInScreenState.exception(appExceptions: $appExceptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exception &&
            const DeepCollectionEquality()
                .equals(other.appExceptions, appExceptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appExceptions));

  @JsonKey(ignore: true)
  @override
  _$$_ExceptionCopyWith<_$_Exception> get copyWith =>
      __$$_ExceptionCopyWithImpl<_$_Exception>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() completed,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return exception(appExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return exception?.call(appExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? completed,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(appExceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Exception value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _Exception implements SignInScreenState {
  const factory _Exception({required final AppExceptions appExceptions}) =
      _$_Exception;

  AppExceptions get appExceptions;
  @JsonKey(ignore: true)
  _$$_ExceptionCopyWith<_$_Exception> get copyWith =>
      throw _privateConstructorUsedError;
}
