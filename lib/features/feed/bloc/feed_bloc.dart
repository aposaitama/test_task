import 'package:bloc/bloc.dart';
import 'package:feed_task/features/feed/models/feed_item.dart';
import 'package:feed_task/features/feed/repository/feed_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc({
    required FeedRepository feedRepository,
  })  : _feedRepository = feedRepository,
        super(FeedState()) {
    on<_LoadPosts>(
      _loadPosts,
    );
  }

  final FeedRepository _feedRepository;

  Future<void> _loadPosts(
    _LoadPosts event,
    Emitter<FeedState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          feedStatus: FeedStateStatus.loading,
          errorMessage: null,
        ),
      );

      final posts = await _feedRepository.fetchPosts();

      emit(
        state.copyWith(
          feedStatus: FeedStateStatus.loaded,
          posts: posts,
        ),
      );
    } catch (e) {
      final message = switch (e) {
        FeedException e => e.message,
        _ => 'Unexpected error',
      };
      emit(
        state.copyWith(
          feedStatus: FeedStateStatus.error,
          errorMessage: message,
        ),
      );
    }
  }
}
