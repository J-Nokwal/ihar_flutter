import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'package:ihar_flutter/features/login/requests/createUserRequest.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firebase_classes/firebase_auth.dart';
import '../../../../core/modals/userModal.dart';

part 'sign_in_screen_event.dart';
part 'sign_in_screen_state.dart';
part 'sign_in_screen_bloc.freezed.dart';

@injectable
class SignInScreenBloc extends Bloc<SignInScreenEvent, SignInScreenState> {
  SignInScreenBloc(Dio dio, AppAuth appAuth) : super(const _Initial()) {
    on<SignInScreenEvent>((event, emit) async {
      await event.map(signInWithGoogle: (_SignInWithGoogle event) async {
        emit(const _Loading());
        try {
          UserCredential userCredential = await appAuth.signInWithGoogle();
          if (userCredential.additionalUserInfo!.isNewUser) {
            UserModals userModals = UserModals(userId: userCredential.user!.uid.toString(), isAnaoymous: false);
            // ignore: await_only_futures
            createUserRequest(userModals);
          } else {
            getUserRequest(userCredential.user!.uid);
          }
          emit(const _Completed());
        } on AppExceptions catch (appExceptions) {
          emit(_Exception(appExceptions: appExceptions));
          // addError(appExceptions, e);
        }
      }, signInWithEmail: (_SignInWithEmail event) {
        emit(const _Loading());

        emit(const _Completed());
      }, signInAnonyously: (_SignInAnonyously event) async {
        emit(const _Loading());
        try {
          UserCredential userCredential = await appAuth.signInAnonymously();
          if (userCredential.additionalUserInfo!.isNewUser) {
            UserModals userModals = UserModals(userId: userCredential.user!.uid.toString(), isAnaoymous: true);
            // ignore: await_only_futures
            appAuth.userModal = await UsersRequests.createUser(dio, user: userModals);
          } else {
            appAuth.userModal = await UsersRequests.getUser(dio, id: userCredential.user!.uid);
          }
          emit(const _Completed());
        } on AppExceptions catch (appExceptions) {
          emit(_Exception(appExceptions: appExceptions));
          // addError(appExceptions, e);
        }
        emit(const _Completed());
      });
    });
  }
  @override
  void onError(Object error, StackTrace stackTrace) {
    // print('$error, $stackTrace');
    print("errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
    super.onError(error, stackTrace);
  }
}
