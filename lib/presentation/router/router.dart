import 'package:auto_route/auto_route.dart';
import 'package:planit/presentation/home/home_page.dart';
import 'package:planit/presentation/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/main',
          page: MainTabbar.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
              children: [
                AutoRoute(
                  page: ShopRoute.page,
                  path: 'home/shop',
                ),
                AutoRoute(
                  page: ReadRoute.page,
                  path: 'home/read',
                ),
                AutoRoute(
                  page: PlanRoute.page,
                  path: 'home/plan',
                ),
              ],
            ),
            AutoRoute(
              page: CategoryRoute.page,
              path: 'category',
            ),
            AutoRoute(
              page: WishListRoute.page,
              path: 'wishlist',
            ),
            AutoRoute(
              page: CartRoute.page,
              path: 'cart',
            ),
          ],
        ),
      ];
}
