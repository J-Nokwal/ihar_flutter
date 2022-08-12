import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/likePostModal.dart';
import 'package:ihar_flutter/core/requests/likesRequests.dart';

part 'like_event.dart';
part 'like_state.dart';
part 'like_bloc.freezed.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {
  LikeBloc({required Dio dio, required AppAuth appAuth}) : super(const _Initial()) {
    on<LikeEvent>((event, emit) async {
      event.map(hitbutton: (e) async {
        final a = await LikesRequests.triggerLike(dio,
            likePostModal: LikePostModal(likedBy: appAuth.firebaseAuthInstance.currentUser!.uid, postId: e.postid));
      });
    });
  }
}
