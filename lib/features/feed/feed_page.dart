import 'package:feed_task/features/feed/repository/feed_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/feed_bloc.dart';
import '../../core/locator.dart';
import '../../core/routing/app_routes.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocProvider(
      create: (
        _,
      ) =>
          FeedBloc(
        feedRepository: sl<FeedRepository>(),
      )..add(
              const FeedEvent.loadPosts(),
            ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feed',
          ),
        ),
        body: BlocBuilder<FeedBloc, FeedState>(
          builder: (context, state) {
            switch (state.feedStatus) {
              case FeedStateStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case FeedStateStatus.error:
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<FeedBloc>().add(
                            const FeedEvent.loadPosts(),
                          );
                    },
                    child: const Text(
                      'Retry',
                    ),
                  ),
                );
              case FeedStateStatus.loaded:
              case FeedStateStatus.initial:
                return ListView.separated(
                  itemCount: state.posts.length,
                  separatorBuilder: (
                    context,
                    index,
                  ) =>
                      const Divider(
                    height: 1,
                  ),
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    final post = state.posts[index];
                    return ListTile(
                      title: Text(
                        post.title,
                      ),
                      subtitle: Text(
                        post.body,
                      ),
                      onTap: () {
                        PostDetailRoute(
                          item: post,
                        ).push(
                          context,
                        );
                      },
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }
}
