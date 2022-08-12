part of 'user_screen_bloc.dart';

@freezed
class UserScreenState with _$UserScreenState {
  const factory UserScreenState.loadingPosts() = _LoadingPosts;
  const factory UserScreenState.completed(
      {required List<PostModals> posts, required int noOfPosts, required List<PostModals> gridPosts}) = _Completed;
  const factory UserScreenState.onError({required String message}) = _OnError;
}
