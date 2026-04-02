import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_item.freezed.dart';
part 'feed_item.g.dart';

@freezed
abstract class FeedItem with _$FeedItem {
  const factory FeedItem({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _FeedItem;

  factory FeedItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FeedItemFromJson(
        json,
      );
}
