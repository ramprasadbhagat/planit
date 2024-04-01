import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class MainTabbar extends StatelessWidget {
  const MainTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _getTabs(context).map((item) => item.route).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          key: WidgetKeys.homeTabBar,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: _getTabs(context)
              .map(
                (item) => BottomNavigationBarItem(
                  icon: item.icon,
                  label: item.label,
                ),
              )
              .toList(),
        );
      },
    );
  }
}

List<RouteItem> _getTabs(BuildContext context) {
  return [
    homeTabRouteItem,
    categoryTabRouteItem,
    wishlistTabRouteItem,
    cartTabRouteItem,
  ];
}

const RouteItem homeTabRouteItem = RouteItem(
  route: HomeRoute(),
  icon: Icon(
    Icons.home_outlined,
    key: Key('homeTab'),
  ),
  label: 'Home',
);

const RouteItem categoryTabRouteItem = RouteItem(
  route: CategoryRoute(),
  icon: Icon(
    Icons.category_outlined,
    key: Key('categoryTab'),
  ),
  label: 'Category',
);

const RouteItem wishlistTabRouteItem = RouteItem(
  route: WishListRoute(),
  icon: Icon(
    Icons.fact_check_outlined,
    key: Key('wishlistTab'),
  ),
  label: 'Wishlist',
);

const RouteItem cartTabRouteItem = RouteItem(
  route: CartRoute(),
  icon: Icon(
    Icons.shopping_cart,
    key: Key('cartTabbar'),
  ),
  label: 'Cart',
);

class RouteItem {
  final PageRouteInfo<dynamic> route;
  final Icon icon;
  final String label;

  const RouteItem({
    required this.route,
    required this.icon,
    required this.label,
  });
}
