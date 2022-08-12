part of 'user_screen_bloc.dart';

@freezed
class UserScreenEvent with _$UserScreenEvent {
  const factory UserScreenEvent.fetchUserPosts({required UserModals user}) = _Started;
}
