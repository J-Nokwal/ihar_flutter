part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.getPosts({@Default(false) bool isRefreshed}) = _GetPosts;
}
