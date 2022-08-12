part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.loadingAnimation() = _LoadingAnimation;
  const factory FeedState.loadingMore({@Default([]) List<PostModals> posts}) = _LoadingMore;
  const factory FeedState.completed({@Default([]) List<PostModals> posts}) = _Completed;

  const factory FeedState.hasError({@Default([]) List<PostModals> posts, String? errorMessage}) = _HasError;
  const factory FeedState.hasReachedMax({@Default([]) List<PostModals> posts}) = _HasReachedMax;
}
