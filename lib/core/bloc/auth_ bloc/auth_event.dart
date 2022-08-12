part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory AuthEvent.signInWithEmail({required String email, required String password}) = _SignInWithEmail;
  const factory AuthEvent.signInAnonyously() = _SignInAnonyously;
}
