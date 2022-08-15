import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors.dart';
import '../../../../core/firebase_classes/firebase_auth.dart';
import '../../../../core/firebase_classes/firebase_storage.dart';
import '../../../../core/modals/userModal.dart';
import '../../../../core/requests/AvatarGeneratorRequests.dart';
import '../../../../core/requests/userRequests.dart';

part 'sign_up_with_email_event.dart';
part 'sign_up_with_email_state.dart';
part 'sign_up_with_email_bloc.freezed.dart';

@injectable
class SignUpWithEmailBloc extends Bloc<SignUpWithEmailEvent, SignUpWithEmailState> {
  SignUpWithEmailBloc({required Dio dio, required AppAuth appAuth, required AppFireBaseStorage appFireBaseStorage})
      : super(const _Initial()) {
    on<SignUpWithEmailEvent>((event, emit) async {
      await event.map(started: (e) async {
        emit(const _Loading());
        try {
          UserCredential userCredential =
              await appAuth.signUpWithEmail(emailAddress: event.emailAddress, password: event.password);
          UserModals user;
          String? profileLink;

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
          user = await UsersRequests.createUser(
            dio,
            user: userModals,
          );
          // createUserRequest(userModals);

          emit(const _Completed());
        } on AppExceptions catch (appExceptions) {
          emit(_Exception(appExceptions: appExceptions));
        }
      });
    });
  }
}
