import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(Dio dio, AppAuth appAuth) : super(const _Loading()) {
    on<FeedEvent>((event, emit) async {
      await event.map(initiate: (_Initiate event) async {
        emit(_Loading());
        try {
          final posts =
              await PostsRequests.getAllPostForUser(dio, byUser: appAuth.firebaseAuthInstance.currentUser!.uid);
          emit(_Completed(posts: posts));
        } on AppExceptions catch (e) {
          emit(_Completed(errorMessage: e.message));
        } catch (e) {
          emit(const _Completed(errorMessage: "Error"));
        }
      });
    });
  }
}
