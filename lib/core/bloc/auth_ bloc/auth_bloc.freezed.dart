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
    required TResult Function() userChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_UserChange value) userChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
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
    required TResult Function() userChange,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
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
    required TResult Function(_UserChange value) userChange,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
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
abstract class _$$_UserChangeCopyWith<$Res> {
  factory _$$_UserChangeCopyWith(
          _$_UserChange value, $Res Function(_$_UserChange) then) =
      __$$_UserChangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserChangeCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UserChangeCopyWith<$Res> {
  __$$_UserChangeCopyWithImpl(
      _$_UserChange _value, $Res Function(_$_UserChange) _then)
      : super(_value, (v) => _then(v as _$_UserChange));

  @override
  _$_UserChange get _value => super._value as _$_UserChange;
}

/// @nodoc

class _$_UserChange implements _UserChange {
  const _$_UserChange();

  @override
  String toString() {
    return 'AuthEvent.userChange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() userChange,
  }) {
    return userChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
  }) {
    return userChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? userChange,
    required TResult orElse(),
  }) {
    if (userChange != null) {
      return userChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_UserChange value) userChange,
  }) {
    return userChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
  }) {
    return userChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_UserChange value)? userChange,
    required TResult orElse(),
  }) {
    if (userChange != null) {
      return userChange(this);
    }
    return orElse();
  }
}

abstract class _UserChange implements AuthEvent {
  const factory _UserChange() = _$_UserChange;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet) signedin,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
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
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet) signedin,
    required TResult Function() signedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
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
  $Res call({AppAuth sudentsInformationGet});
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
  }) {
    return _then(_$_Signedin(
      sudentsInformationGet: sudentsInformationGet == freezed
          ? _value.sudentsInformationGet
          : sudentsInformationGet // ignore: cast_nullable_to_non_nullable
              as AppAuth,
    ));
  }
}

/// @nodoc

class _$_Signedin implements _Signedin {
  const _$_Signedin({required this.sudentsInformationGet});

  @override
  final AppAuth sudentsInformationGet;

  @override
  String toString() {
    return 'AuthState.signedin(sudentsInformationGet: $sudentsInformationGet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signedin &&
            const DeepCollectionEquality()
                .equals(other.sudentsInformationGet, sudentsInformationGet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sudentsInformationGet));

  @JsonKey(ignore: true)
  @override
  _$$_SignedinCopyWith<_$_Signedin> get copyWith =>
      __$$_SignedinCopyWithImpl<_$_Signedin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet) signedin,
    required TResult Function() signedOut,
  }) {
    return signedin(sudentsInformationGet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return signedin?.call(sudentsInformationGet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(sudentsInformationGet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
  }) {
    return signedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(this);
    }
    return orElse();
  }
}

abstract class _Signedin implements AuthState {
  const factory _Signedin({required final AppAuth sudentsInformationGet}) =
      _$_Signedin;

  AppAuth get sudentsInformationGet;
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
    required TResult Function() loading,
    required TResult Function(AppAuth sudentsInformationGet) signedin,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppAuth sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Signedin value) signedin,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Signedin value)? signedin,
    TResult Function(_SignedOut value)? signedOut,
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
