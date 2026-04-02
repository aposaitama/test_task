import 'package:feed_task/features/feed/models/feed_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostDetailsPage extends StatelessWidget {
  final FeedItem post;
  const PostDetailsPage({
    super.key,
    required this.post,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    void popPage() {
      context.pop();
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: popPage,
        ),
        title: const Text(
          'Post details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              post.body,
            ),
          ],
        ),
      ),
    );
  }
}
