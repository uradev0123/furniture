import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:furniture/presentation/router/app_router.gr.dart';

@RoutePage()
class PageRoot extends StatelessWidget {
  const PageRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        RouteFurnitureList(),
        RouteDesignerList(),
        RouteBrandList(),
        RouteQuiz(),
        RouteQuizSetting(),
      ],
      builder: (context, child) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.chair), label: 'furniture'),
              NavigationDestination(icon: Icon(Icons.person), label: 'designer'),
              NavigationDestination(icon: Icon(Icons.apartment), label: 'brand'),
              NavigationDestination(icon: Icon(Icons.quiz), label: 'setting'),
              NavigationDestination(icon: Icon(Icons.quiz), label: 'quiz'),
            ],
            onDestinationSelected: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}