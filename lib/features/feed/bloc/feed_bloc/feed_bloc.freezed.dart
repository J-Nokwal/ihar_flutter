// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class _$$_GetPostsCopyWith<$Res> {
  factory _$$_GetPostsCopyWith(
          _$_GetPosts value, $Res Function(_$_GetPosts) then) =
      __$$_GetPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPostsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$$_GetPostsCopyWith<$Res> {
  __$$_GetPostsCopyWithImpl(
      _$_GetPosts _value, $Res Function(_$_GetPosts) _then)
      : super(_value, (v) => _then(v as _$_GetPosts));

  @override
  _$_GetPosts get _value => super._value as _$_GetPosts;
}

/// @nodoc

class _$_GetPosts implements _GetPosts {
  const _$_GetPosts();

  @override
  String toString() {
    return 'FeedEvent.getPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
  }) {
    return getPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
  }) {
    return getPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
  }) {
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
  }) {
    return getPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class _GetPosts implements FeedEvent {
  const factory _GetPosts() = _$_GetPosts;
}

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;
}

/// @nodoc
abstract class _$$_LoadingAnimationCopyWith<$Res> {
  factory _$$_LoadingAnimationCopyWith(
          _$_LoadingAnimation value, $Res Function(_$_LoadingAnimation) then) =
      __$$_LoadingAnimationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingAnimationCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_LoadingAnimationCopyWith<$Res> {
  __$$_LoadingAnimationCopyWithImpl(
      _$_LoadingAnimation _value, $Res Function(_$_LoadingAnimation) _then)
      : super(_value, (v) => _then(v as _$_LoadingAnimation));

  @override
  _$_LoadingAnimation get _value => super._value as _$_LoadingAnimation;
}

/// @nodoc

class _$_LoadingAnimation implements _LoadingAnimation {
  const _$_LoadingAnimation();

  @override
  String toString() {
    return 'FeedState.loadingAnimation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingAnimation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) {
    return loadingAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) {
    return loadingAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (loadingAnimation != null) {
      return loadingAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) {
    return loadingAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) {
    return loadingAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (loadingAnimation != null) {
      return loadingAnimation(this);
    }
    return orElse();
  }
}

abstract class _LoadingAnimation implements FeedState {
  const factory _LoadingAnimation() = _$_LoadingAnimation;
}

/// @nodoc
abstract class _$$_LoadingMoreCopyWith<$Res> {
  factory _$$_LoadingMoreCopyWith(
          _$_LoadingMore value, $Res Function(_$_LoadingMore) then) =
      __$$_LoadingMoreCopyWithImpl<$Res>;
  $Res call({List<PostModals> posts});
}

/// @nodoc
class __$$_LoadingMoreCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_LoadingMoreCopyWith<$Res> {
  __$$_LoadingMoreCopyWithImpl(
      _$_LoadingMore _value, $Res Function(_$_LoadingMore) _then)
      : super(_value, (v) => _then(v as _$_LoadingMore));

  @override
  _$_LoadingMore get _value => super._value as _$_LoadingMore;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_LoadingMore(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
    ));
  }
}

/// @nodoc

class _$_LoadingMore implements _LoadingMore {
  const _$_LoadingMore({final List<PostModals> posts = const []})
      : _posts = posts;

  final List<PostModals> _posts;
  @override
  @JsonKey()
  List<PostModals> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedState.loadingMore(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingMore &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingMoreCopyWith<_$_LoadingMore> get copyWith =>
      __$$_LoadingMoreCopyWithImpl<_$_LoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) {
    return loadingMore(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) {
    return loadingMore?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements FeedState {
  const factory _LoadingMore({final List<PostModals> posts}) = _$_LoadingMore;

  List<PostModals> get posts;
  @JsonKey(ignore: true)
  _$$_LoadingMoreCopyWith<_$_LoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  $Res call({List<PostModals> posts});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, (v) => _then(v as _$_Completed));

  @override
  _$_Completed get _value => super._value as _$_Completed;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_Completed(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed({final List<PostModals> posts = const []})
      : _posts = posts;

  final List<PostModals> _posts;
  @override
  @JsonKey()
  List<PostModals> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedState.completed(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) {
    return completed(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) {
    return completed?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements FeedState {
  const factory _Completed({final List<PostModals> posts}) = _$_Completed;

  List<PostModals> get posts;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HasErrorCopyWith<$Res> {
  factory _$$_HasErrorCopyWith(
          _$_HasError value, $Res Function(_$_HasError) then) =
      __$$_HasErrorCopyWithImpl<$Res>;
  $Res call({List<PostModals> posts, String? errorMessage});
}

/// @nodoc
class __$$_HasErrorCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_HasErrorCopyWith<$Res> {
  __$$_HasErrorCopyWithImpl(
      _$_HasError _value, $Res Function(_$_HasError) _then)
      : super(_value, (v) => _then(v as _$_HasError));

  @override
  _$_HasError get _value => super._value as _$_HasError;

  @override
  $Res call({
    Object? posts = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_HasError(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HasError implements _HasError {
  const _$_HasError(
      {final List<PostModals> posts = const [], this.errorMessage})
      : _posts = posts;

  final List<PostModals> _posts;
  @override
  @JsonKey()
  List<PostModals> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FeedState.hasError(posts: $posts, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasError &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_HasErrorCopyWith<_$_HasError> get copyWith =>
      __$$_HasErrorCopyWithImpl<_$_HasError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) {
    return hasError(posts, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) {
    return hasError?.call(posts, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(posts, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class _HasError implements FeedState {
  const factory _HasError(
      {final List<PostModals> posts, final String? errorMessage}) = _$_HasError;

  List<PostModals> get posts;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_HasErrorCopyWith<_$_HasError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HasReachedMaxCopyWith<$Res> {
  factory _$$_HasReachedMaxCopyWith(
          _$_HasReachedMax value, $Res Function(_$_HasReachedMax) then) =
      __$$_HasReachedMaxCopyWithImpl<$Res>;
  $Res call({List<PostModals> posts});
}

/// @nodoc
class __$$_HasReachedMaxCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_HasReachedMaxCopyWith<$Res> {
  __$$_HasReachedMaxCopyWithImpl(
      _$_HasReachedMax _value, $Res Function(_$_HasReachedMax) _then)
      : super(_value, (v) => _then(v as _$_HasReachedMax));

  @override
  _$_HasReachedMax get _value => super._value as _$_HasReachedMax;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_HasReachedMax(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModals>,
    ));
  }
}

/// @nodoc

class _$_HasReachedMax implements _HasReachedMax {
  const _$_HasReachedMax({final List<PostModals> posts = const []})
      : _posts = posts;

  final List<PostModals> _posts;
  @override
  @JsonKey()
  List<PostModals> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedState.hasReachedMax(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasReachedMax &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  _$$_HasReachedMaxCopyWith<_$_HasReachedMax> get copyWith =>
      __$$_HasReachedMaxCopyWithImpl<_$_HasReachedMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingAnimation,
    required TResult Function(List<PostModals> posts) loadingMore,
    required TResult Function(List<PostModals> posts) completed,
    required TResult Function(List<PostModals> posts, String? errorMessage)
        hasError,
    required TResult Function(List<PostModals> posts) hasReachedMax,
  }) {
    return hasReachedMax(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
  }) {
    return hasReachedMax?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingAnimation,
    TResult Function(List<PostModals> posts)? loadingMore,
    TResult Function(List<PostModals> posts)? completed,
    TResult Function(List<PostModals> posts, String? errorMessage)? hasError,
    TResult Function(List<PostModals> posts)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (hasReachedMax != null) {
      return hasReachedMax(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimation value) loadingAnimation,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Completed value) completed,
    required TResult Function(_HasError value) hasError,
    required TResult Function(_HasReachedMax value) hasReachedMax,
  }) {
    return hasReachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
  }) {
    return hasReachedMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimation value)? loadingAnimation,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Completed value)? completed,
    TResult Function(_HasError value)? hasError,
    TResult Function(_HasReachedMax value)? hasReachedMax,
    required TResult orElse(),
  }) {
    if (hasReachedMax != null) {
      return hasReachedMax(this);
    }
    return orElse();
  }
}

abstract class _HasReachedMax implements FeedState {
  const factory _HasReachedMax({final List<PostModals> posts}) =
      _$_HasReachedMax;

  List<PostModals> get posts;
  @JsonKey(ignore: true)
  _$$_HasReachedMaxCopyWith<_$_HasReachedMax> get copyWith =>
      throw _privateConstructorUsedError;
}
