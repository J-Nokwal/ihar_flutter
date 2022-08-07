// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'side_container_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SideContainerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PostModals post) getPostComments,
    required TResult Function() getTopRumorers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPostComments value) getPostComments,
    required TResult Function(_GetTopRumorers value) getTopRumorers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideContainerEventCopyWith<$Res> {
  factory $SideContainerEventCopyWith(
          SideContainerEvent value, $Res Function(SideContainerEvent) then) =
      _$SideContainerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SideContainerEventCopyWithImpl<$Res>
    implements $SideContainerEventCopyWith<$Res> {
  _$SideContainerEventCopyWithImpl(this._value, this._then);

  final SideContainerEvent _value;
  // ignore: unused_field
  final $Res Function(SideContainerEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SideContainerEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SideContainerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PostModals post) getPostComments,
    required TResult Function() getTopRumorers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPostComments value) getPostComments,
    required TResult Function(_GetTopRumorers value) getTopRumorers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SideContainerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetPostCommentsCopyWith<$Res> {
  factory _$$_GetPostCommentsCopyWith(
          _$_GetPostComments value, $Res Function(_$_GetPostComments) then) =
      __$$_GetPostCommentsCopyWithImpl<$Res>;
  $Res call({PostModals post});
}

/// @nodoc
class __$$_GetPostCommentsCopyWithImpl<$Res>
    extends _$SideContainerEventCopyWithImpl<$Res>
    implements _$$_GetPostCommentsCopyWith<$Res> {
  __$$_GetPostCommentsCopyWithImpl(
      _$_GetPostComments _value, $Res Function(_$_GetPostComments) _then)
      : super(_value, (v) => _then(v as _$_GetPostComments));

  @override
  _$_GetPostComments get _value => super._value as _$_GetPostComments;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_GetPostComments(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModals,
    ));
  }
}

/// @nodoc

class _$_GetPostComments implements _GetPostComments {
  const _$_GetPostComments({required this.post});

  @override
  final PostModals post;

  @override
  String toString() {
    return 'SideContainerEvent.getPostComments(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostComments &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_GetPostCommentsCopyWith<_$_GetPostComments> get copyWith =>
      __$$_GetPostCommentsCopyWithImpl<_$_GetPostComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PostModals post) getPostComments,
    required TResult Function() getTopRumorers,
  }) {
    return getPostComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
  }) {
    return getPostComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
    required TResult orElse(),
  }) {
    if (getPostComments != null) {
      return getPostComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPostComments value) getPostComments,
    required TResult Function(_GetTopRumorers value) getTopRumorers,
  }) {
    return getPostComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
  }) {
    return getPostComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
    required TResult orElse(),
  }) {
    if (getPostComments != null) {
      return getPostComments(this);
    }
    return orElse();
  }
}

abstract class _GetPostComments implements SideContainerEvent {
  const factory _GetPostComments({required final PostModals post}) =
      _$_GetPostComments;

  PostModals get post;
  @JsonKey(ignore: true)
  _$$_GetPostCommentsCopyWith<_$_GetPostComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTopRumorersCopyWith<$Res> {
  factory _$$_GetTopRumorersCopyWith(
          _$_GetTopRumorers value, $Res Function(_$_GetTopRumorers) then) =
      __$$_GetTopRumorersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTopRumorersCopyWithImpl<$Res>
    extends _$SideContainerEventCopyWithImpl<$Res>
    implements _$$_GetTopRumorersCopyWith<$Res> {
  __$$_GetTopRumorersCopyWithImpl(
      _$_GetTopRumorers _value, $Res Function(_$_GetTopRumorers) _then)
      : super(_value, (v) => _then(v as _$_GetTopRumorers));

  @override
  _$_GetTopRumorers get _value => super._value as _$_GetTopRumorers;
}

/// @nodoc

class _$_GetTopRumorers implements _GetTopRumorers {
  const _$_GetTopRumorers();

  @override
  String toString() {
    return 'SideContainerEvent.getTopRumorers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTopRumorers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PostModals post) getPostComments,
    required TResult Function() getTopRumorers,
  }) {
    return getTopRumorers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
  }) {
    return getTopRumorers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PostModals post)? getPostComments,
    TResult Function()? getTopRumorers,
    required TResult orElse(),
  }) {
    if (getTopRumorers != null) {
      return getTopRumorers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPostComments value) getPostComments,
    required TResult Function(_GetTopRumorers value) getTopRumorers,
  }) {
    return getTopRumorers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
  }) {
    return getTopRumorers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPostComments value)? getPostComments,
    TResult Function(_GetTopRumorers value)? getTopRumorers,
    required TResult orElse(),
  }) {
    if (getTopRumorers != null) {
      return getTopRumorers(this);
    }
    return orElse();
  }
}

abstract class _GetTopRumorers implements SideContainerEvent {
  const factory _GetTopRumorers() = _$_GetTopRumorers;
}

/// @nodoc
mixin _$SideContainerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(
            List<CommentModal>? comments, String? errorMessage)
        postCommentsState,
    required TResult Function() loadingState,
    required TResult Function(
            List<UserModals>? topRumorers, String? errorMessage)
        toprumorersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_PostCommentsState value) postCommentsState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ToprumorersState value) toprumorersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideContainerStateCopyWith<$Res> {
  factory $SideContainerStateCopyWith(
          SideContainerState value, $Res Function(SideContainerState) then) =
      _$SideContainerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SideContainerStateCopyWithImpl<$Res>
    implements $SideContainerStateCopyWith<$Res> {
  _$SideContainerStateCopyWithImpl(this._value, this._then);

  final SideContainerState _value;
  // ignore: unused_field
  final $Res Function(SideContainerState) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$SideContainerStateCopyWithImpl<$Res>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, (v) => _then(v as _$_InitialState));

  @override
  _$_InitialState get _value => super._value as _$_InitialState;
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'SideContainerState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(
            List<CommentModal>? comments, String? errorMessage)
        postCommentsState,
    required TResult Function() loadingState,
    required TResult Function(
            List<UserModals>? topRumorers, String? errorMessage)
        toprumorersState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_PostCommentsState value) postCommentsState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ToprumorersState value) toprumorersState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements SideContainerState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_PostCommentsStateCopyWith<$Res> {
  factory _$$_PostCommentsStateCopyWith(_$_PostCommentsState value,
          $Res Function(_$_PostCommentsState) then) =
      __$$_PostCommentsStateCopyWithImpl<$Res>;
  $Res call({List<CommentModal>? comments, String? errorMessage});
}

/// @nodoc
class __$$_PostCommentsStateCopyWithImpl<$Res>
    extends _$SideContainerStateCopyWithImpl<$Res>
    implements _$$_PostCommentsStateCopyWith<$Res> {
  __$$_PostCommentsStateCopyWithImpl(
      _$_PostCommentsState _value, $Res Function(_$_PostCommentsState) _then)
      : super(_value, (v) => _then(v as _$_PostCommentsState));

  @override
  _$_PostCommentsState get _value => super._value as _$_PostCommentsState;

  @override
  $Res call({
    Object? comments = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PostCommentsState(
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModal>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostCommentsState implements _PostCommentsState {
  const _$_PostCommentsState(
      {final List<CommentModal>? comments, this.errorMessage})
      : _comments = comments;

  final List<CommentModal>? _comments;
  @override
  List<CommentModal>? get comments {
    final value = _comments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SideContainerState.postCommentsState(comments: $comments, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostCommentsState &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_PostCommentsStateCopyWith<_$_PostCommentsState> get copyWith =>
      __$$_PostCommentsStateCopyWithImpl<_$_PostCommentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(
            List<CommentModal>? comments, String? errorMessage)
        postCommentsState,
    required TResult Function() loadingState,
    required TResult Function(
            List<UserModals>? topRumorers, String? errorMessage)
        toprumorersState,
  }) {
    return postCommentsState(comments, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
  }) {
    return postCommentsState?.call(comments, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
    required TResult orElse(),
  }) {
    if (postCommentsState != null) {
      return postCommentsState(comments, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_PostCommentsState value) postCommentsState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ToprumorersState value) toprumorersState,
  }) {
    return postCommentsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
  }) {
    return postCommentsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
    required TResult orElse(),
  }) {
    if (postCommentsState != null) {
      return postCommentsState(this);
    }
    return orElse();
  }
}

abstract class _PostCommentsState implements SideContainerState {
  const factory _PostCommentsState(
      {final List<CommentModal>? comments,
      final String? errorMessage}) = _$_PostCommentsState;

  List<CommentModal>? get comments;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_PostCommentsStateCopyWith<_$_PostCommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$SideContainerStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'SideContainerState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(
            List<CommentModal>? comments, String? errorMessage)
        postCommentsState,
    required TResult Function() loadingState,
    required TResult Function(
            List<UserModals>? topRumorers, String? errorMessage)
        toprumorersState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_PostCommentsState value) postCommentsState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ToprumorersState value) toprumorersState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SideContainerState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_ToprumorersStateCopyWith<$Res> {
  factory _$$_ToprumorersStateCopyWith(
          _$_ToprumorersState value, $Res Function(_$_ToprumorersState) then) =
      __$$_ToprumorersStateCopyWithImpl<$Res>;
  $Res call({List<UserModals>? topRumorers, String? errorMessage});
}

/// @nodoc
class __$$_ToprumorersStateCopyWithImpl<$Res>
    extends _$SideContainerStateCopyWithImpl<$Res>
    implements _$$_ToprumorersStateCopyWith<$Res> {
  __$$_ToprumorersStateCopyWithImpl(
      _$_ToprumorersState _value, $Res Function(_$_ToprumorersState) _then)
      : super(_value, (v) => _then(v as _$_ToprumorersState));

  @override
  _$_ToprumorersState get _value => super._value as _$_ToprumorersState;

  @override
  $Res call({
    Object? topRumorers = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ToprumorersState(
      topRumorers: topRumorers == freezed
          ? _value._topRumorers
          : topRumorers // ignore: cast_nullable_to_non_nullable
              as List<UserModals>?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ToprumorersState implements _ToprumorersState {
  const _$_ToprumorersState(
      {final List<UserModals>? topRumorers, this.errorMessage})
      : _topRumorers = topRumorers;

  final List<UserModals>? _topRumorers;
  @override
  List<UserModals>? get topRumorers {
    final value = _topRumorers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SideContainerState.toprumorersState(topRumorers: $topRumorers, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToprumorersState &&
            const DeepCollectionEquality()
                .equals(other._topRumorers, _topRumorers) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topRumorers),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ToprumorersStateCopyWith<_$_ToprumorersState> get copyWith =>
      __$$_ToprumorersStateCopyWithImpl<_$_ToprumorersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(
            List<CommentModal>? comments, String? errorMessage)
        postCommentsState,
    required TResult Function() loadingState,
    required TResult Function(
            List<UserModals>? topRumorers, String? errorMessage)
        toprumorersState,
  }) {
    return toprumorersState(topRumorers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
  }) {
    return toprumorersState?.call(topRumorers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CommentModal>? comments, String? errorMessage)?
        postCommentsState,
    TResult Function()? loadingState,
    TResult Function(List<UserModals>? topRumorers, String? errorMessage)?
        toprumorersState,
    required TResult orElse(),
  }) {
    if (toprumorersState != null) {
      return toprumorersState(topRumorers, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_PostCommentsState value) postCommentsState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ToprumorersState value) toprumorersState,
  }) {
    return toprumorersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
  }) {
    return toprumorersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_PostCommentsState value)? postCommentsState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ToprumorersState value)? toprumorersState,
    required TResult orElse(),
  }) {
    if (toprumorersState != null) {
      return toprumorersState(this);
    }
    return orElse();
  }
}

abstract class _ToprumorersState implements SideContainerState {
  const factory _ToprumorersState(
      {final List<UserModals>? topRumorers,
      final String? errorMessage}) = _$_ToprumorersState;

  List<UserModals>? get topRumorers;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ToprumorersStateCopyWith<_$_ToprumorersState> get copyWith =>
      throw _privateConstructorUsedError;
}
