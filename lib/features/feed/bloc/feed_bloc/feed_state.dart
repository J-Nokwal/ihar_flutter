part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.loading() = _Loading;
  const factory FeedState.completed({List<PostModals>? posts, String? errorMessage}) = _Completed;
}
