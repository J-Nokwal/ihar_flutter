import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required Dio dio, required AppAuth appAuth}) : super(const _Loading()) {
    StreamSubscription<User?> streamSubscription;

    on<AuthEvent>((event, emit) async {
      await event.map(
          checkAuth: (_CheckAuth _checkAuth) async {
            emit(const _Loading());
            if (appAuth.isAuthenticated) {
              // ignore: avoid_print, prefer_interpolation_to_compose_strings
              print("asdsssss " + appAuth.firebaseAuthInstance.currentUser!.displayName.toString());
              final user = await UsersRequests.getUser(dio, id: appAuth.firebaseAuthInstance.currentUser!.uid);
              appAuth.userModal = user;
              emit(_Signedin(sudentsInformationGet: appAuth));
            } else {
              emit(const _SignedOut());
            }
          },
          userChange: (_UserChange userchage) {},
          addUserStream: (e) {
            streamSubscription = appAuth.firebaseAuthInstance.userChanges().listen(
              (User? user) {
                print("user changes");
                add(const AuthEvent.checkAuth());
              },
            );
          });
    });
  }
}
