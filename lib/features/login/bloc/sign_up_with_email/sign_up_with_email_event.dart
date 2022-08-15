part of 'sign_up_with_email_bloc.dart';

@freezed
class SignUpWithEmailEvent with _$SignUpWithEmailEvent {
  const factory SignUpWithEmailEvent.started({required String emailAddress, required String password}) = _Started;
}
