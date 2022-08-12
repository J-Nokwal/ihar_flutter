import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/modals/getPostByPageIdModal.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(Dio dio, AppAuth appAuth) : super(const _LoadingAnimation()) {
    List<PostModals> postList = [];
    int pageId = 0;
    int noOfPages = 1;
    String? queryTime;
    on<FeedEvent>((event, emit) async {
      await event.map(
        getPosts: (_GetPosts event) async {
          if (postList.isEmpty) {
            emit(const _LoadingAnimation());
          } else {
            emit(_LoadingMore(posts: postList));
          }
          // if (pageId >= noOfPages) {
          //   return;
          // }
          // await Future.delayed(Duration(seconds: 5));
          try {
            if (pageId == 0) {
              GetPostByPageIdModal postByPageIdModal =
                  await PostsRequests.getPostByPageIdByUser(dio, byUser: appAuth.firebaseAuthInstance.currentUser!.uid);
              pageId = 1;
              queryTime = postByPageIdModal.queryTime;
              noOfPages = postByPageIdModal.noOfPages;
              postList.addAll(postByPageIdModal.posts);
            } else {
              GetPostByPageIdModal postByPageIdModal = await PostsRequests.getPostByPageIdByUser(dio,
                  byUser: appAuth.firebaseAuthInstance.currentUser!.uid, pageId: pageId, queryTime: queryTime);
              postList.addAll(postByPageIdModal.posts);
              pageId += 1;
            }
            print("emit ${postList.length}");
            if (pageId >= noOfPages) {
              emit(_HasReachedMax(posts: postList));
            } else {
              emit(_Completed(posts: postList));
            }
          } on AppExceptions catch (e) {
            emit(_HasError(errorMessage: e.message));
          } catch (e) {
            emit(const _HasError(errorMessage: "Error"));
          }
        },
      );
    });
  }
  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
  }
}
