// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostModals post) fetchComments,
    required TResult Function(CommentModal commment) postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_PostComment value) postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  final CommentsEvent _value;
  // ignore: unused_field
  final $Res Function(CommentsEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCommentsCopyWith<$Res> {
  factory _$$_FetchCommentsCopyWith(
          _$_FetchComments value, $Res Function(_$_FetchComments) then) =
      __$$_FetchCommentsCopyWithImpl<$Res>;
  $Res call({PostModals post});
}

/// @nodoc
class __$$_FetchCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_FetchCommentsCopyWith<$Res> {
  __$$_FetchCommentsCopyWithImpl(
      _$_FetchComments _value, $Res Function(_$_FetchComments) _then)
      : super(_value, (v) => _then(v as _$_FetchComments));

  @override
  _$_FetchComments get _value => super._value as _$_FetchComments;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_FetchComments(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModals,
    ));
  }
}

/// @nodoc

class _$_FetchComments implements _FetchComments {
  const _$_FetchComments({required this.post});

  @override
  final PostModals post;

  @override
  String toString() {
    return 'CommentsEvent.fetchComments(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchComments &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCommentsCopyWith<_$_FetchComments> get copyWith =>
      __$$_FetchCommentsCopyWithImpl<_$_FetchComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostModals post) fetchComments,
    required TResult Function(CommentModal commment) postComment,
  }) {
    return fetchComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
  }) {
    return fetchComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_PostComment value) postComment,
  }) {
    return fetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
  }) {
    return fetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(this);
    }
    return orElse();
  }
}

abstract class _FetchComments implements CommentsEvent {
  const factory _FetchComments({required final PostModals post}) =
      _$_FetchComments;

  PostModals get post;
  @JsonKey(ignore: true)
  _$$_FetchCommentsCopyWith<_$_FetchComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostCommentCopyWith<$Res> {
  factory _$$_PostCommentCopyWith(
          _$_PostComment value, $Res Function(_$_PostComment) then) =
      __$$_PostCommentCopyWithImpl<$Res>;
  $Res call({CommentModal commment});
}

/// @nodoc
class __$$_PostCommentCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$$_PostCommentCopyWith<$Res> {
  __$$_PostCommentCopyWithImpl(
      _$_PostComment _value, $Res Function(_$_PostComment) _then)
      : super(_value, (v) => _then(v as _$_PostComment));

  @override
  _$_PostComment get _value => super._value as _$_PostComment;

  @override
  $Res call({
    Object? commment = freezed,
  }) {
    return _then(_$_PostComment(
      commment: commment == freezed
          ? _value.commment
          : commment // ignore: cast_nullable_to_non_nullable
              as CommentModal,
    ));
  }
}

/// @nodoc

class _$_PostComment implements _PostComment {
  const _$_PostComment({required this.commment});

  @override
  final CommentModal commment;

  @override
  String toString() {
    return 'CommentsEvent.postComment(commment: $commment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostComment &&
            const DeepCollectionEquality().equals(other.commment, commment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(commment));

  @JsonKey(ignore: true)
  @override
  _$$_PostCommentCopyWith<_$_PostComment> get copyWith =>
      __$$_PostCommentCopyWithImpl<_$_PostComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostModals post) fetchComments,
    required TResult Function(CommentModal commment) postComment,
  }) {
    return postComment(commment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
  }) {
    return postComment?.call(commment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostModals post)? fetchComments,
    TResult Function(CommentModal commment)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(commment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_PostComment value) postComment,
  }) {
    return postComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
  }) {
    return postComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(this);
    }
    return orElse();
  }
}

abstract class _PostComment implements CommentsEvent {
  const factory _PostComment({required final CommentModal commment}) =
      _$_PostComment;

  CommentModal get commment;
  @JsonKey(ignore: true)
  _$$_PostCommentCopyWith<_$_PostComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingComments,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        completed,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        postingComments,
    required TResult Function(String message) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingComments value) loadingComments,
    required TResult Function(_Completed value) completed,
    required TResult Function(_PostingComments value) postingComments,
    required TResult Function(_OnError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  final CommentsState _value;
  // ignore: unused_field
  final $Res Function(CommentsState) _then;
}

/// @nodoc
abstract class _$$_LoadingCommentsCopyWith<$Res> {
  factory _$$_LoadingCommentsCopyWith(
          _$_LoadingComments value, $Res Function(_$_LoadingComments) then) =
      __$$_LoadingCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCommentsCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements _$$_LoadingCommentsCopyWith<$Res> {
  __$$_LoadingCommentsCopyWithImpl(
      _$_LoadingComments _value, $Res Function(_$_LoadingComments) _then)
      : super(_value, (v) => _then(v as _$_LoadingComments));

  @override
  _$_LoadingComments get _value => super._value as _$_LoadingComments;
}

/// @nodoc

class _$_LoadingComments implements _LoadingComments {
  const _$_LoadingComments();

  @override
  String toString() {
    return 'CommentsState.loadingComments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingComments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingComments,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        completed,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        postingComments,
    required TResult Function(String message) onError,
  }) {
    return loadingComments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
  }) {
    return loadingComments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (loadingComments != null) {
      return loadingComments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingComments value) loadingComments,
    required TResult Function(_Completed value) completed,
    required TResult Function(_PostingComments value) postingComments,
    required TResult Function(_OnError value) onError,
  }) {
    return loadingComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
  }) {
    return loadingComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (loadingComments != null) {
      return loadingComments(this);
    }
    return orElse();
  }
}

abstract class _LoadingComments implements CommentsState {
  const factory _LoadingComments() = _$_LoadingComments;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  $Res call({List<CommentModal> comments, int noOfComments});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, (v) => _then(v as _$_Completed));

  @override
  _$_Completed get _value => super._value as _$_Completed;

  @override
  $Res call({
    Object? comments = freezed,
    Object? noOfComments = freezed,
  }) {
    return _then(_$_Completed(
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModal>,
      noOfComments: noOfComments == freezed
          ? _value.noOfComments
          : noOfComments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(
      {required final List<CommentModal> comments, required this.noOfComments})
      : _comments = comments;

  final List<CommentModal> _comments;
  @override
  List<CommentModal> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int noOfComments;

  @override
  String toString() {
    return 'CommentsState.completed(comments: $comments, noOfComments: $noOfComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other.noOfComments, noOfComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(noOfComments));

  @JsonKey(ignore: true)
  @override
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingComments,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        completed,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        postingComments,
    required TResult Function(String message) onError,
  }) {
    return completed(comments, noOfComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
  }) {
    return completed?.call(comments, noOfComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(comments, noOfComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingComments value) loadingComments,
    required TResult Function(_Completed value) completed,
    required TResult Function(_PostingComments value) postingComments,
    required TResult Function(_OnError value) onError,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements CommentsState {
  const factory _Completed(
      {required final List<CommentModal> comments,
      required final int noOfComments}) = _$_Completed;

  List<CommentModal> get comments;
  int get noOfComments;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostingCommentsCopyWith<$Res> {
  factory _$$_PostingCommentsCopyWith(
          _$_PostingComments value, $Res Function(_$_PostingComments) then) =
      __$$_PostingCommentsCopyWithImpl<$Res>;
  $Res call({List<CommentModal> comments, int noOfComments});
}

/// @nodoc
class __$$_PostingCommentsCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements _$$_PostingCommentsCopyWith<$Res> {
  __$$_PostingCommentsCopyWithImpl(
      _$_PostingComments _value, $Res Function(_$_PostingComments) _then)
      : super(_value, (v) => _then(v as _$_PostingComments));

  @override
  _$_PostingComments get _value => super._value as _$_PostingComments;

  @override
  $Res call({
    Object? comments = freezed,
    Object? noOfComments = freezed,
  }) {
    return _then(_$_PostingComments(
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModal>,
      noOfComments: noOfComments == freezed
          ? _value.noOfComments
          : noOfComments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostingComments implements _PostingComments {
  const _$_PostingComments(
      {required final List<CommentModal> comments, required this.noOfComments})
      : _comments = comments;

  final List<CommentModal> _comments;
  @override
  List<CommentModal> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int noOfComments;

  @override
  String toString() {
    return 'CommentsState.postingComments(comments: $comments, noOfComments: $noOfComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostingComments &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other.noOfComments, noOfComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(noOfComments));

  @JsonKey(ignore: true)
  @override
  _$$_PostingCommentsCopyWith<_$_PostingComments> get copyWith =>
      __$$_PostingCommentsCopyWithImpl<_$_PostingComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingComments,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        completed,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        postingComments,
    required TResult Function(String message) onError,
  }) {
    return postingComments(comments, noOfComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
  }) {
    return postingComments?.call(comments, noOfComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (postingComments != null) {
      return postingComments(comments, noOfComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingComments value) loadingComments,
    required TResult Function(_Completed value) completed,
    required TResult Function(_PostingComments value) postingComments,
    required TResult Function(_OnError value) onError,
  }) {
    return postingComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
  }) {
    return postingComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (postingComments != null) {
      return postingComments(this);
    }
    return orElse();
  }
}

abstract class _PostingComments implements CommentsState {
  const factory _PostingComments(
      {required final List<CommentModal> comments,
      required final int noOfComments}) = _$_PostingComments;

  List<CommentModal> get comments;
  int get noOfComments;
  @JsonKey(ignore: true)
  _$$_PostingCommentsCopyWith<_$_PostingComments> get copyWith =>
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
class __$$_OnErrorCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
    return 'CommentsState.onError(message: $message)';
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
    required TResult Function() loadingComments,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        completed,
    required TResult Function(List<CommentModal> comments, int noOfComments)
        postingComments,
    required TResult Function(String message) onError,
  }) {
    return onError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
    TResult Function(String message)? onError,
  }) {
    return onError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingComments,
    TResult Function(List<CommentModal> comments, int noOfComments)? completed,
    TResult Function(List<CommentModal> comments, int noOfComments)?
        postingComments,
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
    required TResult Function(_LoadingComments value) loadingComments,
    required TResult Function(_Completed value) completed,
    required TResult Function(_PostingComments value) postingComments,
    required TResult Function(_OnError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingComments value)? loadingComments,
    TResult Function(_Completed value)? completed,
    TResult Function(_PostingComments value)? postingComments,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements CommentsState {
  const factory _OnError({required final String message}) = _$_OnError;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}
