import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class MainTabbar extends StatefulWidget {
  const MainTabbar({super.key});

  @override
  State<MainTabbar> createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryBloc>().add(
          const CategoryEvent.fetch(),
        );
    context.read<HighlightProductBloc>().add(
          const HighlightProductEvent.fetch(),
        );
    context.read<QuickPicksBloc>().add(
          const QuickPicksEvent.fetch(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _getTabs(context).map((item) => item.route).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          key: WidgetKeys.homeTabBar,
          currentIndex: tabsRouter.activeIndex,
          selectedItemColor: AppColors.black,
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
    talkToUsTabRouteItem,
    categoryTabRouteItem,
    wishlistTabRouteItem,
    cartTabRouteItem,
  ];
}

RouteItem homeTabRouteItem = RouteItem(
  route: const HomeRoute(),
  icon: SvgPicture.asset(
    SvgImage.homeTabIcon,
  ),
  label: 'Home',
);

RouteItem talkToUsTabRouteItem = RouteItem(
  route: const TalkToUsRoute(),
  icon: SvgPicture.asset(
    SvgImage.talkUoUsTabIcon,
    height: 26,
    width: 26,
  ),
  label: 'Talk to us',
);

RouteItem categoryTabRouteItem = RouteItem(
  route: const CategoryRoute(),
  icon: SvgPicture.asset(
    SvgImage.categoryTabIcon,
  ),
  label: 'Category',
);

RouteItem wishlistTabRouteItem = RouteItem(
  route: const WishListRoute(),
  icon: SvgPicture.asset(
    SvgImage.checkListTabIcon,
  ),
  label: 'Shopping list',
);

RouteItem cartTabRouteItem = RouteItem(
  route: const CartRoute(),
  icon: SvgPicture.asset(
    SvgImage.cartTabIcon,
  ),
  label: 'Cart',
);

class RouteItem {
  final PageRouteInfo<dynamic> route;
  final Widget icon;
  final String label;

  const RouteItem({
    required this.route,
    required this.icon,
    required this.label,
  });
}
