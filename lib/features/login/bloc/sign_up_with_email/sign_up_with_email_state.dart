part of 'sign_up_with_email_bloc.dart';

@freezed
class SignUpWithEmailState with _$SignUpWithEmailState {
  const factory SignUpWithEmailState.initial() = _Initial;
  const factory SignUpWithEmailState.loading() = _Loading;
  const factory SignUpWithEmailState.completed() = _Completed;

  const factory SignUpWithEmailState.exception({required AppExceptions appExceptions}) = _Exception;
}
