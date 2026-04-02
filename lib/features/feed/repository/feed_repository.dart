import 'package:dio/dio.dart';

import '../models/feed_item.dart';

class FeedException implements Exception {
  FeedException(this.message);

  final String message;

  @override
  String toString() => 'FeedException: $message';
}

class FeedRepository {
  FeedRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  static const _postsUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<FeedItem>> fetchPosts() async {
    try {
      final response = await _dio.get(
        _postsUrl,
      );

      final data = response.data;
      if (data is! List) {
        throw FeedException(
          'Invalid response format',
        );
      }

      return data
          .map<FeedItem>(
            (
              e,
            ) =>
                FeedItem.fromJson(
              Map<String, dynamic>.from(
                e,
              ),
            ),
          )
          .toList();
    } on DioException catch (e) {
      throw FeedException(
        e.message ?? 'Network error',
      );
    }
  }
}
