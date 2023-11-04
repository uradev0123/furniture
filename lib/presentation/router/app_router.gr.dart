// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:furniture/presentation/pages/page_brand_list.dart' as _i1;
import 'package:furniture/presentation/pages/page_designer_list.dart' as _i2;
import 'package:furniture/presentation/pages/page_furniture_list.dart' as _i3;
import 'package:furniture/presentation/pages/page_quiz.dart' as _i4;
import 'package:furniture/presentation/pages/page_quiz_setting.dart' as _i5;
import 'package:furniture/presentation/pages/page_root.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RouteBrandList.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.PageBrandList(),
      );
    },
    RouteDesignerList.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PageDesignerList(),
      );
    },
    RouteFurnitureList.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PageFurnitureList(),
      );
    },
    RouteQuiz.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PageQuiz(),
      );
    },
    RouteQuizSetting.name: (routeData) {
      final args = routeData.argsAs<RouteQuizSettingArgs>(
          orElse: () => const RouteQuizSettingArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PageQuizSetting(key: args.key),
      );
    },
    RouteRoot.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PageRoot(),
      );
    },
  };
}

/// generated route for
/// [_i1.PageBrandList]
class RouteBrandList extends _i7.PageRouteInfo<void> {
  const RouteBrandList({List<_i7.PageRouteInfo>? children})
      : super(
          RouteBrandList.name,
          initialChildren: children,
        );

  static const String name = 'RouteBrandList';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PageDesignerList]
class RouteDesignerList extends _i7.PageRouteInfo<void> {
  const RouteDesignerList({List<_i7.PageRouteInfo>? children})
      : super(
          RouteDesignerList.name,
          initialChildren: children,
        );

  static const String name = 'RouteDesignerList';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PageFurnitureList]
class RouteFurnitureList extends _i7.PageRouteInfo<void> {
  const RouteFurnitureList({List<_i7.PageRouteInfo>? children})
      : super(
          RouteFurnitureList.name,
          initialChildren: children,
        );

  static const String name = 'RouteFurnitureList';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PageQuiz]
class RouteQuiz extends _i7.PageRouteInfo<void> {
  const RouteQuiz({List<_i7.PageRouteInfo>? children})
      : super(
          RouteQuiz.name,
          initialChildren: children,
        );

  static const String name = 'RouteQuiz';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PageQuizSetting]
class RouteQuizSetting extends _i7.PageRouteInfo<RouteQuizSettingArgs> {
  RouteQuizSetting({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          RouteQuizSetting.name,
          args: RouteQuizSettingArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteQuizSetting';

  static const _i7.PageInfo<RouteQuizSettingArgs> page =
      _i7.PageInfo<RouteQuizSettingArgs>(name);
}

class RouteQuizSettingArgs {
  const RouteQuizSettingArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'RouteQuizSettingArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PageRoot]
class RouteRoot extends _i7.PageRouteInfo<void> {
  const RouteRoot({List<_i7.PageRouteInfo>? children})
      : super(
          RouteRoot.name,
          initialChildren: children,
        );

  static const String name = 'RouteRoot';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
