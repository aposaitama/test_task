import 'package:dio/dio.dart';
import 'package:feed_task/features/feed/repository/feed_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        headers: const {
          'Accept': 'application/json; charset=utf-8',
        },
        responseType: ResponseType.json,
      ),
    ),
  );

  sl.registerLazySingleton<FeedRepository>(
    () => FeedRepository(
      dio: sl<Dio>(),
    ),
  );
}
