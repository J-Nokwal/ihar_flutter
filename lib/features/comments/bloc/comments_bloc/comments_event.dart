part of 'comments_bloc.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.fetchComments({required PostModals post}) = _FetchComments;
  const factory CommentsEvent.postComment({required CommentModal commment}) = _PostComment;
}
