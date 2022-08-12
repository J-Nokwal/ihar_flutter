// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, (v) => _then(v as _$_CheckAuth));

  @override
  _$_CheckAuth get _value => super._value as _$_CheckAuth;
}

/// @nodoc

class _$_CheckAuth implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signInWithGoogle()';
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
    required TResult Function() checkAuth,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
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
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
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

abstract class _SignInWithGoogle implements AuthEvent {
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
    extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
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
    required TResult Function() checkAuth,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
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
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
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

abstract class _SignInWithEmail implements AuthEvent {
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
    extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signInAnonyously()';
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
    required TResult Function() checkAuth,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function() signInAnonyously,
  }) {
    return signInAnonyously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function()? signInAnonyously,
  }) {
    return signInAnonyously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
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
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInAnonyously value) signInAnonyously,
  }) {
    return signInAnonyously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInAnonyously value)? signInAnonyously,
  }) {
    return signInAnonyously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
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

abstract class _SignInAnonyously implements AuthEvent {
  const factory _SignInAnonyously() = _$_SignInAnonyously;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.loading()';
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
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SignedinCopyWith<$Res> {
  factory _$$_SignedinCopyWith(
          _$_Signedin value, $Res Function(_$_Signedin) then) =
      __$$_SignedinCopyWithImpl<$Res>;
  $Res call({AppAuth sudentsInformationGet, UserModals user});
}

/// @nodoc
class __$$_SignedinCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SignedinCopyWith<$Res> {
  __$$_SignedinCopyWithImpl(
      _$_Signedin _value, $Res Function(_$_Signedin) _then)
      : super(_value, (v) => _then(v as _$_Signedin));

  @override
  _$_Signedin get _value => super._value as _$_Signedin;

  @override
  $Res call({
    Object? sudentsInformationGet = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Signedin(
      sudentsInformationGet: sudentsInformationGet == freezed
          ? _value.sudentsInformationGet
          : sudentsInformationGet // ignore: cast_nullable_to_non_nullable
              as AppAuth,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModals,
    ));
  }
}

/// @nodoc

class _$_Signedin implements _Signedin {
  const _$_Signedin({required this.sudentsInformationGet, required this.user});

  @override
  final AppAuth sudentsInformationGet;
  @override
  final UserModals user;

  @override
  String toString() {
    return 'AuthState.signedin(sudentsInformationGet: $sudentsInformationGet, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signedin &&
            const DeepCollectionEquality()
                .equals(other.sudentsInformationGet, sudentsInformationGet) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sudentsInformationGet),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_SignedinCopyWith<_$_Signedin> get copyWith =>
      __$$_SignedinCopyWithImpl<_$_Signedin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return signedin(sudentsInformationGet, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return signedin?.call(sudentsInformationGet, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(sudentsInformationGet, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) {
    return signedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) {
    return signedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(this);
    }
    return orElse();
  }
}

abstract class _Signedin implements AuthState {
  const factory _Signedin(
      {required final AppAuth sudentsInformationGet,
      required final UserModals user}) = _$_Signedin;

  AppAuth get sudentsInformationGet;
  UserModals get user;
  @JsonKey(ignore: true)
  _$$_SignedinCopyWith<_$_Signedin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, (v) => _then(v as _$_SignedOut));

  @override
  _$_SignedOut get _value => super._value as _$_SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthState {
  const factory _SignedOut() = _$_SignedOut;
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
class __$$_ExceptionCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.exception(appExceptions: $appExceptions)';
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
    required TResult Function(AppAuth sudentsInformationGet, UserModals user)
        signedin,
    required TResult Function() signedOut,
    required TResult Function(AppExceptions appExceptions) exception,
  }) {
    return exception(appExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
    TResult Function(AppExceptions appExceptions)? exception,
  }) {
    return exception?.call(appExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet, UserModals user)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Exception value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _Exception implements AuthState {
  const factory _Exception({required final AppExceptions appExceptions}) =
      _$_Exception;

  AppExceptions get appExceptions;
  @JsonKey(ignore: true)
  _$$_ExceptionCopyWith<_$_Exception> get copyWith =>
      throw _privateConstructorUsedError;
}
