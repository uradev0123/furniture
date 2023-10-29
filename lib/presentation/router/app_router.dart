import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: RouteRoot.page,
      children: [
        AutoRoute(
          // initial: true,
          path: 'furniture',
          page: RouteFurnitureList.page,
        ),
        AutoRoute(
          path: 'designer',
          page: RouteDesignerList.page,
        ),
        AutoRoute(
          path: 'brand',
          page: RouteBrandList.page,
        ),
        AutoRoute(
          initial: true,
          path: 'quiz',
          page: RouteQuiz.page,
        ),
      ],
    ),
  ];
}

