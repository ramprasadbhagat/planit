// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
<<<<<<< HEAD
import 'package:planit/presentation/add_money/add_money.dart' as _i2;
import 'package:planit/presentation/address_book/adress_book_page.dart' as _i3;
import 'package:planit/presentation/auth/login/login.dart' as _i9;
import 'package:planit/presentation/auth/otp/otp.dart' as _i8;
import 'package:planit/presentation/auth/signup/signup.dart' as _i21;
import 'package:planit/presentation/cart/cart_page.dart' as _i4;
import 'package:planit/presentation/category/category_page.dart' as _i5;
import 'package:planit/presentation/checkout/checkout_page.dart' as _i6;
import 'package:planit/presentation/home/home_page.dart' as _i7;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i15;
import 'package:planit/presentation/home/read/read_page.dart' as _i17;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i19;
import 'package:planit/presentation/main/tab_bar.dart' as _i10;
import 'package:planit/presentation/my_complains/add_complains/add_complains_page.dart'
    as _i1;
import 'package:planit/presentation/my_complains/my_complains_page.dart'
    as _i11;
import 'package:planit/presentation/my_wallet/my_wallet_page.dart' as _i12;
import 'package:planit/presentation/order/order_details.dart' as _i13;
import 'package:planit/presentation/order_list/order_list_page.dart' as _i14;
import 'package:planit/presentation/profile/profile_page.dart' as _i16;
=======
import 'package:planit/presentation/add_money/add_money.dart' as _i1;
import 'package:planit/presentation/address_book/adress_book_page.dart' as _i2;
import 'package:planit/presentation/auth/login/login.dart' as _i9;
import 'package:planit/presentation/auth/otp/otp.dart' as _i8;
import 'package:planit/presentation/auth/signup/signup.dart' as _i21;
import 'package:planit/presentation/cart/cart_page.dart' as _i3;
import 'package:planit/presentation/category/category_page.dart' as _i4;
import 'package:planit/presentation/checkout/checkout_page.dart' as _i5;
import 'package:planit/presentation/highlights/highLights.dart' as _i6;
import 'package:planit/presentation/home/home_page.dart' as _i7;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i14;
import 'package:planit/presentation/home/read/read_page.dart' as _i17;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i19;
import 'package:planit/presentation/main/tab_bar.dart' as _i10;
import 'package:planit/presentation/my_wallet/my_wallet_page.dart' as _i11;
import 'package:planit/presentation/order/order_details.dart' as _i12;
import 'package:planit/presentation/order_list/order_list_page.dart' as _i13;
import 'package:planit/presentation/profile/profile_page.dart' as _i15;
import 'package:planit/presentation/quick_picks/quick_picks.dart' as _i16;
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
import 'package:planit/presentation/search_product/serach_product_page.dart'
    as _i18;
import 'package:planit/presentation/shopping_list/shopping_list.dart' as _i20;
import 'package:planit/presentation/talk_to_us/talk_to_us.dart' as _i22;
import 'package:planit/presentation/track_order/track_order_page.dart' as _i23;
import 'package:planit/presentation/wishlist/wishlist.dart' as _i24;
import 'package:planit/presentation/wishlist/wishlist_screen.dart' as _i25;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
<<<<<<< HEAD
    AddComplainsRoute.name: (routeData) {
=======
    AddMoneyRoute.name: (routeData) {
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddComplainsPage(),
      );
    },
    AddMoneyRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddMoneyPage(),
      );
    },
    AddressBookRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddressBookPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CategoryPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CheckoutPage(),
      );
    },
<<<<<<< HEAD
    HomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
=======
    HighLightsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HighLightsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
        child: const _i7.HomePage(),
      );
    },
    LoginOtp.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginOtp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    MainTabbar.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MainTabbar(),
<<<<<<< HEAD
      );
    },
    MyComplainsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MyComplainsPage(),
=======
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
<<<<<<< HEAD
        child: const _i12.MyWalletPage(),
=======
        child: const _i11.MyWalletPage(),
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    OrderDetailsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
<<<<<<< HEAD
        child: const _i13.OrderDetailsPage(),
=======
        child: const _i12.OrderDetailsPage(),
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    OrderListRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
<<<<<<< HEAD
        child: const _i14.OrderListPage(),
=======
        child: const _i13.OrderListPage(),
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    PlanRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
<<<<<<< HEAD
        child: const _i15.PlanPage(),
=======
        child: const _i14.PlanPage(),
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    ProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
<<<<<<< HEAD
        child: const _i16.ProfilePage(),
=======
        child: const _i15.ProfilePage(),
      );
    },
    QuickPicksRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.QuickPicksPage(),
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
      );
    },
    ReadRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ReadPage(),
      );
    },
    SearchProductRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SearchProductPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ShopPage(),
      );
    },
    ShoppingListRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ShoppingListPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SignupPage(),
      );
    },
    TalkToUsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.TalkToUsPage(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.TrackOrderPage(),
      );
    },
    WishListRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.WishListPage(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.WishlistScreen(),
      );
    },
  };
}

/// generated route for
<<<<<<< HEAD
/// [_i1.AddComplainsPage]
class AddComplainsRoute extends _i26.PageRouteInfo<void> {
  const AddComplainsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AddComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddComplainsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMoneyPage]
=======
/// [_i1.AddMoneyPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class AddMoneyRoute extends _i26.PageRouteInfo<void> {
  const AddMoneyRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AddMoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMoneyRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i3.AddressBookPage]
=======
/// [_i2.AddressBookPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class AddressBookRoute extends _i26.PageRouteInfo<void> {
  const AddressBookRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AddressBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressBookRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i4.CartPage]
=======
/// [_i3.CartPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class CartRoute extends _i26.PageRouteInfo<void> {
  const CartRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i5.CategoryPage]
=======
/// [_i4.CategoryPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class CategoryRoute extends _i26.PageRouteInfo<void> {
  const CategoryRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i6.CheckoutPage]
=======
/// [_i5.CheckoutPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class CheckoutRoute extends _i26.PageRouteInfo<void> {
  const CheckoutRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
=======
/// [_i6.HighLightsPage]
class HighLightsRoute extends _i26.PageRouteInfo<void> {
  const HighLightsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          HighLightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HighLightsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
/// [_i7.HomePage]
class HomeRoute extends _i26.PageRouteInfo<void> {
  const HomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginOtp]
class LoginOtp extends _i26.PageRouteInfo<void> {
  const LoginOtp({List<_i26.PageRouteInfo>? children})
      : super(
          LoginOtp.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtp';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i26.PageRouteInfo<void> {
  const LoginRoute({List<_i26.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainTabbar]
class MainTabbar extends _i26.PageRouteInfo<void> {
  const MainTabbar({List<_i26.PageRouteInfo>? children})
      : super(
          MainTabbar.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbar';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i11.MyComplainsPage]
class MyComplainsRoute extends _i26.PageRouteInfo<void> {
  const MyComplainsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MyComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyComplainsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MyWalletPage]
=======
/// [_i11.MyWalletPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class MyWalletRoute extends _i26.PageRouteInfo<void> {
  const MyWalletRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i13.OrderDetailsPage]
=======
/// [_i12.OrderDetailsPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class OrderDetailsRoute extends _i26.PageRouteInfo<void> {
  const OrderDetailsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OrderDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i14.OrderListPage]
=======
/// [_i13.OrderListPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class OrderListRoute extends _i26.PageRouteInfo<void> {
  const OrderListRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i15.PlanPage]
=======
/// [_i14.PlanPage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class PlanRoute extends _i26.PageRouteInfo<void> {
  const PlanRoute({List<_i26.PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
/// [_i16.ProfilePage]
=======
/// [_i15.ProfilePage]
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
class ProfileRoute extends _i26.PageRouteInfo<void> {
  const ProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
<<<<<<< HEAD
=======
/// [_i16.QuickPicksPage]
class QuickPicksRoute extends _i26.PageRouteInfo<void> {
  const QuickPicksRoute({List<_i26.PageRouteInfo>? children})
      : super(
          QuickPicksRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuickPicksRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
>>>>>>> a038988 (Feat/Added quickPicks viewAll Screen)
/// [_i17.ReadPage]
class ReadRoute extends _i26.PageRouteInfo<void> {
  const ReadRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ReadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SearchProductPage]
class SearchProductRoute extends _i26.PageRouteInfo<void> {
  const SearchProductRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SearchProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchProductRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ShopPage]
class ShopRoute extends _i26.PageRouteInfo<void> {
  const ShopRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ShoppingListPage]
class ShoppingListRoute extends _i26.PageRouteInfo<void> {
  const ShoppingListRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ShoppingListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SignupPage]
class SignupRoute extends _i26.PageRouteInfo<void> {
  const SignupRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i22.TalkToUsPage]
class TalkToUsRoute extends _i26.PageRouteInfo<void> {
  const TalkToUsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TalkToUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalkToUsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i23.TrackOrderPage]
class TrackOrderRoute extends _i26.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.WishListPage]
class WishListRoute extends _i26.PageRouteInfo<void> {
  const WishListRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WishlistScreen]
class WishlistRoute extends _i26.PageRouteInfo<void> {
  const WishlistRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}
