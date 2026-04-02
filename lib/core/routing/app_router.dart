import 'package:feed_task/core/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter routerConfig() => GoRouter(
        routes: $appRoutes,
        initialLocation: FeedRoute().location,
        debugLogDiagnostics: false,
      );
}
