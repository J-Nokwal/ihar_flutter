import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/modals/CommentsAllModal.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/requests/commentsRequests.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors.dart';
import '../../../../core/firebase_classes/firebase_auth.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

@injectable
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc(Dio dio, AppAuth appAuth) : super(const _LoadingComments()) {
    List<CommentModal> comments = [];
    on<CommentsEvent>((event, emit) async {
      await event.map(fetchComments: (e) async {
        emit(const _LoadingComments());
        try {
          comments = await CommentsRequests.getAllCommentForPost(dio, postId: e.post.id!);
          emit(_Completed(
            noOfComments: comments.length,
            comments: comments,
          ));
        } on AppExceptions catch (appExceptions) {
          emit(_OnError(message: appExceptions.message ?? "Error Occured while Fetching Comments"));
        } on Exception {
          emit(const _OnError(message: "Error Occured while Fetching Comments"));
        }
      }, postComment: (e) async {
        emit(_PostingComments(comments: comments, noOfComments: comments.length));
        try {
          CommentModal c = await CommentsRequests.createComment(dio, comment: e.commment);
          comments.add(c);
          emit(_Completed(
            noOfComments: comments.length,
            comments: comments,
          ));
        } on AppExceptions catch (appExceptions) {
          emit(_OnError(message: appExceptions.message ?? "Error Occured while Fetching Comments"));
        } on Exception {
          emit(const _OnError(message: "Error Occured while Fetching Comments"));
        }
      });
    });
  }
}
