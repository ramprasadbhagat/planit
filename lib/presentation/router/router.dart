import 'package:auto_route/auto_route.dart';
import 'package:planit/presentation/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          initial: true,
        ),
        AutoRoute(
          page: LoginOtp.page,
          path: '/otp',
        ),
        AutoRoute(
          page: SignupRoute.page,
          path: '/signup',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: AddressBookRoute.page,
          path: '/addressbook',
        ),
        AutoRoute(
          page: OrderListRoute.page,
          path: '/orderList',
        ),
        AutoRoute(
          page: TrackOrderRoute.page,
          path: '/trackOrder',
        ),
        AutoRoute(
          page: SearchProductRoute.page,
          path: '/searchProduct',
        ),
        AutoRoute(
          page: WishlistRoute.page,
          path: '/wishlistPage',
        ),
        AutoRoute(
          page: CheckoutRoute.page,
          path: '/checkout',
        ),
        AutoRoute(
          page: MyWalletRoute.page,
          path: '/myWallet',
        ),
        AutoRoute(
          page: AddMoneyRoute.page,
          path: '/myWallet/addMoney',
        ),
        AutoRoute(
          page: OrderDetailsRoute.page,
          path: '/orderDetails',
        ),
        AutoRoute(
          path: '/maintab',
          page: MainTabbar.page,
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
              page: TalkToUsRoute.page,
              path: 'talk_to_us',
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
