part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.signedin({required AppAuth sudentsInformationGet}) = _Signedin;
  const factory AuthState.signedOut() = _SignedOut;
}
