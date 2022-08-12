import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_storage.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../errors.dart';
import '../../modals/userModal.dart';
import '../../requests/AvatarGeneratorRequests.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required Dio dio, required AppAuth appAuth, required AppFireBaseStorage appFireBaseStorage})
      : super(const _Loading()) {
    StreamSubscription<User?>? streamSubscription;

    void addStream() {
      streamSubscription ??= appAuth.firebaseAuthInstance.userChanges().skip(1).listen(
        (User? user) {
          print("user changes");
          add(const AuthEvent.checkAuth());
        },
      );
    }

    void closeStream() async {
      await streamSubscription?.cancel();
      streamSubscription = null;
    }

    on<AuthEvent>((event, emit) async {
      await event.map(checkAuth: (_CheckAuth _checkAuth) async {
        // appAuth.signOut();
        emit(const _Loading());
        if (appAuth.isAuthenticated) {
          // ignore: avoid_print, prefer_interpolation_to_compose_strings
          print("asdsssss " + appAuth.firebaseAuthInstance.currentUser!.displayName.toString());
          final user = await UsersRequests.getUser(dio, id: appAuth.firebaseAuthInstance.currentUser!.uid);
          appAuth.userModal = user;
          emit(_Signedin(sudentsInformationGet: appAuth, user: user));
          // await Future.delayed(Duration(seconds: 5));
          addStream();
        } else {
          emit(const _SignedOut());
          closeStream();
        }
      }, signInWithGoogle: (_SignInWithGoogle event) async {
        emit(const _Loading());
        try {
          UserCredential userCredential = await appAuth.signInWithGoogle();
          UserModals user;
          String? profileLink;
          if (userCredential.additionalUserInfo!.isNewUser) {
            if (userCredential.user!.photoURL == null) {
              final a = await AvatarGenerator.getNewAvatar(dio);
              print(Directory.systemTemp.path);
              final b = await File("${Directory.systemTemp.path}/profilepic.jpg").writeAsBytes(a);
              final UploadReturn uploadReturn = await appFireBaseStorage.uploadProfilePic(b);
              await uploadReturn.task;
              profileLink = await uploadReturn.mountainsRef.getDownloadURL();
              appAuth.updateUserData(profilePhoto: profileLink);
            }
            UserModals userModals = UserModals(
                userId: userCredential.user!.uid.toString(),
                firstName: userCredential.user!.displayName,
                email: userCredential.user!.email,
                profilePhotoLink: userCredential.user!.photoURL ?? profileLink!,
                isAnaoymous: false);
            user = await UsersRequests.createUser(dio, user: userModals);
            // createUserRequest(userModals);
          } else {
            user = await UsersRequests.getUser(dio, id: userCredential.user!.uid);
            // getUserRequest(userCredential.user!.uid);
          }
          emit(_Signedin(sudentsInformationGet: appAuth, user: user));
          addStream();
        } on AppExceptions catch (appExceptions) {
          emit(_Exception(appExceptions: appExceptions));
          // addError(appExceptions, e);
        }
      }, signInWithEmail: (_SignInWithEmail event) {
        emit(const _Loading());

        // emit( _Completed());
      }, signInAnonyously: (_SignInAnonyously event) async {
        emit(const _Loading());
        try {
          appAuth.signOut();
          UserCredential userCredential = await appAuth.signInAnonymously();

          if (userCredential.additionalUserInfo!.isNewUser) {
            final a = await AvatarGenerator.getNewAvatar(dio);
            final b = await File("${Directory.systemTemp.path}/profilepic.jpg").writeAsBytes(a);
            final UploadReturn uploadReturn = await appFireBaseStorage.uploadProfilePic(b);
            await uploadReturn.task;
            String profileLink = await uploadReturn.mountainsRef.getDownloadURL();
            UserModals userModals = UserModals(
                userId: userCredential.user!.uid.toString(), profilePhotoLink: profileLink, isAnaoymous: true);
            print(userModalsToJson(userModals));
            // ignore: await_only_futures
            appAuth.userModal = await UsersRequests.createUser(dio, user: userModals);
          } else {
            appAuth.userModal = await UsersRequests.getUser(dio, id: userCredential.user!.uid);
          }
          emit(_Signedin(sudentsInformationGet: appAuth, user: appAuth.userModal!));
          addStream();
        } on AppExceptions catch (appExceptions) {
          appAuth.signOut();
          print("signed out because of error: ${appExceptions.message}");
          emit(_Exception(appExceptions: appExceptions));
          // addError(appExceptions, e);
        } catch (e) {
          appAuth.signOut();
          print("signed out because of error");
          emit(_Exception(appExceptions: AppExceptions.appAuthException()));
        }
      });
    });
  }
}
