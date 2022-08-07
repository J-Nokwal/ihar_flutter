import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AppAuth appAuth}) : super(const _Loading()) {
    appAuth.firebaseAuthInstance.userChanges().listen(
      (User? user) {
        add(const AuthEvent.checkAuth());
      },
    );
    on<AuthEvent>((event, emit) {
      event.map(
          checkAuth: (_CheckAuth _checkAuth) {
            emit(const _Loading());
            if (appAuth.isAuthenticated) {
              // ignore: avoid_print, prefer_interpolation_to_compose_strings
              print("asdsssss " + appAuth.firebaseAuthInstance.currentUser!.displayName.toString());
              emit(_Signedin(sudentsInformationGet: appAuth));
            } else {
              emit(const _SignedOut());
            }
          },
          userChange: (_UserChange userchage) {});
    });
  }
}
