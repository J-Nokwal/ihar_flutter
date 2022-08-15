part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.loadingComments() = _LoadingComments;
  const factory CommentsState.completed({
    required List<CommentModal> comments,
    required int noOfComments,
  }) = _Completed;
  const factory CommentsState.postingComments({required List<CommentModal> comments, required int noOfComments}) =
      _PostingComments;
  const factory CommentsState.onError({required String message}) = _OnError;
}
