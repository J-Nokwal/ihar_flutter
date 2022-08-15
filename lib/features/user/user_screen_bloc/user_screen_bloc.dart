import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors.dart';

part 'user_screen_event.dart';
part 'user_screen_state.dart';
part 'user_screen_bloc.freezed.dart';

@injectable
class UserScreenBloc extends Bloc<UserScreenEvent, UserScreenState> {
  UserScreenBloc(Dio dio, AppAuth appAuth) : super(const _LoadingPosts()) {
    on<UserScreenEvent>((event, emit) async {
      await event.map(fetchUserPosts: (e) async {
        emit(const _LoadingPosts());
        try {
          List<PostModals> posts = await PostsRequests.getAllPostOfUserForUser(dio,
              ofUser: e.user.userId, byUser: appAuth.firebaseAuthInstance.currentUser!.uid);
          List<PostModals> gridPosts =
              posts.where((post) => post.postPhotoLink != null && post.postPhotoLink != "").toList();
          emit(_Completed(noOfPosts: posts.length, posts: posts, gridPosts: gridPosts));
        } on AppExceptions catch (appExceptions) {
          emit(_OnError(message: appExceptions.message ?? "Error Occured while Fetching Posts"));
        } on Exception {
          emit(const _OnError(message: "Error Occured while Fetching Posts"));
        }
      });
    });
  }
}
