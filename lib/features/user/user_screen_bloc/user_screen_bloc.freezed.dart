// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserScreenEvent {
  UserModals get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModals user) fetchUserPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModals user)? fetchUserPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModals user)? fetchUserPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) fetchUserPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? fetchUserPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? fetchUserPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserScreenEventCopyWith<UserScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScreenEventCopyWith<$Res> {
  factory $UserScreenEventCopyWith(
          UserScreenEvent value, $Res Function(UserScreenEvent) then) =
      _$UserScreenEventCopyWithImpl<$Res>;
  $Res call({UserModals user});
}

/// @nodoc
class _$UserScreenEventCopyWithImpl<$Res>
    implements $UserScreenEventCopyWith<$Res> {
  _$UserScreenEventCopyWithImpl(this._value, this._then);

  final UserScreenEvent _value;
  // ignore: unused_field
  final $Res Function(UserScreenEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModals,
    ));
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $UserScreenEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({UserModals user});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$UserScreenEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Started(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModals,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.user});

  @override
  final UserModals user;

  @override
  String toString() {
    return 'UserScreenEvent.fetchUserPosts(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModals user) fetchUserPosts,
  }) {
    return fetchUserPosts(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModals user)? fetchUserPosts,
  }) {
    return fetchUserPosts?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModals user)? fetchUserPosts,
    required TResult orElse(),
  }) {
    if (fetchUserPosts != null) {
      return fetchUserPosts(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) fetchUserPosts,
  }) {
    return fetchUserPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? fetchUserPosts,
  }) {
    return fetchUserPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? fetchUserPosts,
    required TResult orElse(),
  }) {
    if (fetchUserPosts != null) {
      return fetchUserPosts(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserScreenEvent {
  const factory _Started({required final UserModals user}) = _$_Started;

  @override
  UserModals get user;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingPosts,
    required TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)
        completed,
    required TResult Function(String message) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPosts value) loadingPosts,
    required TResult Function(_Completed value) completed,
    required TResult Function(_OnError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScreenStateCopyWith<$Res> {
  factory $UserScreenStateCopyWith(
          UserScreenState value, $Res Function(UserScreenState) then) =
      _$UserScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserScreenStateCopyWithImpl<$Res>
    implements $UserScreenStateCopyWith<$Res> {
  _$UserScreenStateCopyWithImpl(this._value, this._then);

  final UserScreenState _value;
  // ignore: unused_field
  final $Res Function(UserScreenState) _then;
}

/// @nodoc
abstract class _$$_LoadingPostsCopyWith<$Res> {
  factory _$$_LoadingPostsCopyWith(
          _$_LoadingPosts value, $Res Function(_$_LoadingPosts) then) =
      __$$_LoadingPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingPostsCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$$_LoadingPostsCopyWith<$Res> {
  __$$_LoadingPostsCopyWithImpl(
      _$_LoadingPosts _value, $Res Function(_$_LoadingPosts) _then)
      : super(_value, (v) => _then(v as _$_LoadingPosts));

  @override
  _$_LoadingPosts get _value => super._value as _$_LoadingPosts;
}

/// @nodoc

class _$_LoadingPosts implements _LoadingPosts {
  const _$_LoadingPosts();

  @override
  String toString() {
    return 'UserScreenState.loadingPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingPosts,
    required TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)
        completed,
    required TResult Function(String message) onError,
  }) {
    return loadingPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
  }) {
    return loadingPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (loadingPosts != null) {
      return loadingPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPosts value) loadingPosts,
    required TResult Function(_Completed value) completed,
    required TResult Function(_OnError value) onError,
  }) {
    return loadingPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
  }) {
    return loadingPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (loadingPosts != null) {
      return loadingPosts(this);
    }
    return orElse();
  }
}

abstract class _LoadingPosts implements UserScreenState {
  const factory _LoadingPosts() = _$_LoadingPosts;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  $Res call(
      {List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, (v) => _then(v as _$_Completed));

  @override
  _$_Completed get _value => super._value as _$_Completed;

  @override
  $Res call({
    Object? posts = freezed,
    Object? noOfPosts = freezed,
    Object? gridPosts = freezed,
  }) {
    return _then(_$_Completed(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
      noOfPosts: noOfPosts == freezed
          ? _value.noOfPosts
          : noOfPosts // ignore: cast_nullable_to_non_nullable
              as int,
      gridPosts: gridPosts == freezed
          ? _value._gridPosts
          : gridPosts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(
      {required final List<PostModals> posts,
      required this.noOfPosts,
      required final List<PostModals> gridPosts})
      : _posts = posts,
        _gridPosts = gridPosts;

  final List<PostModals> _posts;
  @override
  List<PostModals> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final int noOfPosts;
  final List<PostModals> _gridPosts;
  @override
  List<PostModals> get gridPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gridPosts);
  }

  @override
  String toString() {
    return 'UserScreenState.completed(posts: $posts, noOfPosts: $noOfPosts, gridPosts: $gridPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other.noOfPosts, noOfPosts) &&
            const DeepCollectionEquality()
                .equals(other._gridPosts, _gridPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(noOfPosts),
      const DeepCollectionEquality().hash(_gridPosts));

  @JsonKey(ignore: true)
  @override
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingPosts,
    required TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)
        completed,
    required TResult Function(String message) onError,
  }) {
    return completed(posts, noOfPosts, gridPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
  }) {
    return completed?.call(posts, noOfPosts, gridPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(posts, noOfPosts, gridPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPosts value) loadingPosts,
    required TResult Function(_Completed value) completed,
    required TResult Function(_OnError value) onError,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements UserScreenState {
  const factory _Completed(
      {required final List<PostModals> posts,
      required final int noOfPosts,
      required final List<PostModals> gridPosts}) = _$_Completed;

  List<PostModals> get posts;
  int get noOfPosts;
  List<PostModals> get gridPosts;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res> extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, (v) => _then(v as _$_OnError));

  @override
  _$_OnError get _value => super._value as _$_OnError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_OnError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserScreenState.onError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingPosts,
    required TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)
        completed,
    required TResult Function(String message) onError,
  }) {
    return onError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
  }) {
    return onError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingPosts,
    TResult Function(
            List<PostModals> posts, int noOfPosts, List<PostModals> gridPosts)?
        completed,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPosts value) loadingPosts,
    required TResult Function(_Completed value) completed,
    required TResult Function(_OnError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPosts value)? loadingPosts,
    TResult Function(_Completed value)? completed,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements UserScreenState {
  const factory _OnError({required final String message}) = _$_OnError;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}
