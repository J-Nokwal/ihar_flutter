part of 'sign_in_screen_bloc.dart';

@freezed
class SignInScreenState with _$SignInScreenState {
  const factory SignInScreenState.initial() = _Initial;
  const factory SignInScreenState.loading() = _Loading;
  const factory SignInScreenState.completed() = _Completed;
  const factory SignInScreenState.exception({required AppExceptions appExceptions}) = _Exception;
}
