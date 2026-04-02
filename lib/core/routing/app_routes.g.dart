// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $feedRoute,
    ];

RouteBase get $feedRoute => GoRouteData.$route(
      path: '/feed',
      factory: $FeedRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'post',
          factory: $PostDetailRoute._fromState,
        ),
      ],
    );

mixin $FeedRoute on GoRouteData {
  static FeedRoute _fromState(GoRouterState state) => const FeedRoute();

  @override
  String get location => GoRouteData.$location(
        '/feed',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PostDetailRoute on GoRouteData {
  static PostDetailRoute _fromState(GoRouterState state) => PostDetailRoute(
        item: (String json0) {
          return FeedItem.fromJson(jsonDecode(json0) as Map<String, dynamic>);
        }(state.uri.queryParameters['item']!),
      );

  PostDetailRoute get _self => this as PostDetailRoute;

  @override
  String get location => GoRouteData.$location(
        '/feed/post',
        queryParams: {
          'item': jsonEncode(_self.item.toJson()),
        },
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
