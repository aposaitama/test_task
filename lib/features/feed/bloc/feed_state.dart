part of 'feed_bloc.dart';

enum FeedStateStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    @Default(
      FeedStateStatus.loading,
    )
    FeedStateStatus feedStatus,
    @Default(
      [],
    )
    List<FeedItem> posts,
    String? errorMessage,
  }) = _FeedState;
}
