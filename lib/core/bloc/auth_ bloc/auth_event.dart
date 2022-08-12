part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.userChange() = _UserChange;
  const factory AuthEvent.addUserStream() = _AddUserStream;
}
