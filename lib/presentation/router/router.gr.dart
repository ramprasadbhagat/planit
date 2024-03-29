// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:planit/presentation/cart/cart_page.dart' as _i1;
import 'package:planit/presentation/category/category_page.dart' as _i2;
import 'package:planit/presentation/home/home_page.dart' as _i3;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i5;
import 'package:planit/presentation/home/read/read_page.dart' as _i6;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i7;
import 'package:planit/presentation/main/tab_bar.dart' as _i4;
import 'package:planit/presentation/wishlist/wishlist.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    MainTabbar.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainTabbar(),
      );
    },
    PlanRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PlanPage(),
      );
    },
    ReadRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ReadPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ShopPage(),
      );
    },
    WishListRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WishListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryPage]
class CategoryRoute extends _i9.PageRouteInfo<void> {
  const CategoryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainTabbar]
class MainTabbar extends _i9.PageRouteInfo<void> {
  const MainTabbar({List<_i9.PageRouteInfo>? children})
      : super(
          MainTabbar.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbar';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PlanPage]
class PlanRoute extends _i9.PageRouteInfo<void> {
  const PlanRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ReadPage]
class ReadRoute extends _i9.PageRouteInfo<void> {
  const ReadRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ReadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ShopPage]
class ShopRoute extends _i9.PageRouteInfo<void> {
  const ShopRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WishListPage]
class WishListRoute extends _i9.PageRouteInfo<void> {
  const WishListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
