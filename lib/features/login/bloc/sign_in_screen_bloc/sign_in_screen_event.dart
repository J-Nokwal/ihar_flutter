part of 'sign_in_screen_bloc.dart';

@freezed
class SignInScreenEvent with _$SignInScreenEvent {
  const factory SignInScreenEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory SignInScreenEvent.signInWithEmail({required String email, required String password}) = _SignInWithEmail;
  const factory SignInScreenEvent.signInAnonyously() = _SignInAnonyously;
  // const factory SignInScreenEvent.started() = _Started;
}
