import 'package:auto_route/auto_route.dart';
import 'package:planit/presentation/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          // initial: true,
        ),
        AutoRoute(
          page: LoginOtp.page,
          path: '/otp',
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
          page: SearchRecipesRoute.page,
          path: '/searchRecipes',
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
          page: MyComplainsRoute.page,
          path: '/myComplains',
        ),
        AutoRoute(
          page: CouponListRoute.page,
          path: '/Coupons',
        ),
        AutoRoute(
          page: AddComplainsRoute.page,
          path: '/myComplains/addComplains',
        ),
        AutoRoute(
          page: QuickPicksRoute.page,
          path: '/quickPicks',
        ),
        AutoRoute(
          page: HighLightsRoute.page,
          path: '/highLights',
        ),
        AutoRoute(
          page: OrderDetailsRoute.page,
          path: '/orderDetails',
        ),
        AutoRoute(
          page: UserProfileRoute.page,
          path: '/userProfile',
        ),
        AutoRoute(
          page: RecipeDetailsRoute.page,
          path: '/recipeDetails',
        ),
        AutoRoute(
          page: FavouriteRecipesRoute.page,
          path: '/favouriteRecipes',
        ),
        AutoRoute(
          page: BlogDetailsRoute.page,
          path: '/blogDetails',
        ),
        AutoRoute(
          page: BlogSearchRoute.page,
          path: '/searchBlogs',
        ),
        AutoRoute(
          path: '/maintab',
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
                  children: [
                    AutoRoute(
                      page: RecipesRoute.page,
                      path: 'home/read/recipes',
                    ),
                    AutoRoute(
                      page: BlogsRoute.page,
                      path: 'home/read/blogs',
                    ),
                  ],
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
              page: ShoppingListRoute.page,
              path: 'shoppingList',
            ),
            AutoRoute(
              page: CartRoute.page,
              path: 'cart',
            ),
          ],
        ),
      ];
}
