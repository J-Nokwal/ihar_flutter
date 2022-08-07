import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/CommentsAllModal.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/commentsRequests.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:injectable/injectable.dart';

part 'side_container_event.dart';
part 'side_container_state.dart';
part 'side_container_bloc.freezed.dart';

@injectable
class SideContainerBloc extends Bloc<SideContainerEvent, SideContainerState> {
  SideContainerBloc(Dio dio, AppAuth appAuth) : super(_InitialState()) {
    on<SideContainerEvent>((event, emit) async {
      await event.map(started: (_Started event) async {
        emit(const _InitialState());
      }, getPostComments: (_GetPostComments event) async {
        emit(const _LoadingState());
        try {
          final comments = await CommentsRequests.getAllCommentForPost(dio, postId: event.post.id!);
          emit(_PostCommentsState(comments: comments));
        } on AppExceptions catch (e) {
          emit(_PostCommentsState(errorMessage: e.message));
        } catch (e) {
          emit(const _PostCommentsState(errorMessage: "Error"));
        }
      }, getTopRumorers: (_GetTopRumorers event) async {
        emit(const _LoadingState());
        try {
          emit(const _InitialState());
          // final comments = await CommentsRequests.getAllCommentForPost(dio, postId: event.post.id!);
          // emit(_PostCommentsState(comments: comments));
        } on AppExceptions catch (e) {
          emit(_PostCommentsState(errorMessage: e.message));
        } catch (e) {
          emit(const _PostCommentsState(errorMessage: "Error"));
        }
      });
    });
  }
}
