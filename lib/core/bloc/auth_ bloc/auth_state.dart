part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.signedin({required AppAuth sudentsInformationGet, required UserModals user}) = _Signedin;
  const factory AuthState.signedOut() = _SignedOut;
  const factory AuthState.exception({required AppExceptions appExceptions}) = _Exception;
}
