part of 'feed_bloc.dart';

@freezed
sealed class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loadPosts() = _LoadPosts;
}
