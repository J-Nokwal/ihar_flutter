// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikeEvent {
  int get postid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postid) hitbutton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postid)? hitbutton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postid)? hitbutton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Hitbutton value) hitbutton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Hitbutton value)? hitbutton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Hitbutton value)? hitbutton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikeEventCopyWith<LikeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeEventCopyWith<$Res> {
  factory $LikeEventCopyWith(LikeEvent value, $Res Function(LikeEvent) then) =
      _$LikeEventCopyWithImpl<$Res>;
  $Res call({int postid});
}

/// @nodoc
class _$LikeEventCopyWithImpl<$Res> implements $LikeEventCopyWith<$Res> {
  _$LikeEventCopyWithImpl(this._value, this._then);

  final LikeEvent _value;
  // ignore: unused_field
  final $Res Function(LikeEvent) _then;

  @override
  $Res call({
    Object? postid = freezed,
  }) {
    return _then(_value.copyWith(
      postid: postid == freezed
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HitbuttonCopyWith<$Res> implements $LikeEventCopyWith<$Res> {
  factory _$$_HitbuttonCopyWith(
          _$_Hitbutton value, $Res Function(_$_Hitbutton) then) =
      __$$_HitbuttonCopyWithImpl<$Res>;
  @override
  $Res call({int postid});
}

/// @nodoc
class __$$_HitbuttonCopyWithImpl<$Res> extends _$LikeEventCopyWithImpl<$Res>
    implements _$$_HitbuttonCopyWith<$Res> {
  __$$_HitbuttonCopyWithImpl(
      _$_Hitbutton _value, $Res Function(_$_Hitbutton) _then)
      : super(_value, (v) => _then(v as _$_Hitbutton));

  @override
  _$_Hitbutton get _value => super._value as _$_Hitbutton;

  @override
  $Res call({
    Object? postid = freezed,
  }) {
    return _then(_$_Hitbutton(
      postid: postid == freezed
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Hitbutton implements _Hitbutton {
  const _$_Hitbutton({required this.postid});

  @override
  final int postid;

  @override
  String toString() {
    return 'LikeEvent.hitbutton(postid: $postid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hitbutton &&
            const DeepCollectionEquality().equals(other.postid, postid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postid));

  @JsonKey(ignore: true)
  @override
  _$$_HitbuttonCopyWith<_$_Hitbutton> get copyWith =>
      __$$_HitbuttonCopyWithImpl<_$_Hitbutton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postid) hitbutton,
  }) {
    return hitbutton(postid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postid)? hitbutton,
  }) {
    return hitbutton?.call(postid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postid)? hitbutton,
    required TResult orElse(),
  }) {
    if (hitbutton != null) {
      return hitbutton(postid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Hitbutton value) hitbutton,
  }) {
    return hitbutton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Hitbutton value)? hitbutton,
  }) {
    return hitbutton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Hitbutton value)? hitbutton,
    required TResult orElse(),
  }) {
    if (hitbutton != null) {
      return hitbutton(this);
    }
    return orElse();
  }
}

abstract class _Hitbutton implements LikeEvent {
  const factory _Hitbutton({required final int postid}) = _$_Hitbutton;

  @override
  int get postid;
  @override
  @JsonKey(ignore: true)
  _$$_HitbuttonCopyWith<_$_Hitbutton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeStateCopyWith<$Res> {
  factory $LikeStateCopyWith(LikeState value, $Res Function(LikeState) then) =
      _$LikeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res> implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._value, this._then);

  final LikeState _value;
  // ignore: unused_field
  final $Res Function(LikeState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LikeStateCopyWithImpl<$Res>
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
    return 'LikeState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LikeState {
  const factory _Initial() = _$_Initial;
}
