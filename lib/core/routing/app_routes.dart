import 'dart:convert';

import 'package:feed_task/features/feed/feed_page.dart';
import 'package:feed_task/features/feed/models/feed_item.dart';
import 'package:feed_task/features/post_details/post_details.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

part 'app_routes.g.dart';

@TypedGoRoute<FeedRoute>(
  path: '/feed',
  routes: [
    TypedGoRoute<PostDetailRoute>(
      path: 'post',
    ),
  ],
)
class FeedRoute extends GoRouteData with $FeedRoute {
  const FeedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FeedPage();
  }
}

class PostDetailRoute extends GoRouteData with $PostDetailRoute {
  final FeedItem item;

  const PostDetailRoute({
    required this.item,
  });

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return PostDetailsPage(
      post: item,
    );
  }
}
