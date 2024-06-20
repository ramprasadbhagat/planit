// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:planit/presentation/address_book/adress_book_page.dart' as _i1;
import 'package:planit/presentation/auth/login/login.dart' as _i7;
import 'package:planit/presentation/auth/otp/otp.dart' as _i6;
import 'package:planit/presentation/auth/signup/signup.dart' as _i16;
import 'package:planit/presentation/cart/cart_page.dart' as _i2;
import 'package:planit/presentation/category/category_page.dart' as _i3;
import 'package:planit/presentation/checkout/checkout_page.dart' as _i4;
import 'package:planit/presentation/home/home_page.dart' as _i5;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i11;
import 'package:planit/presentation/home/read/read_page.dart' as _i13;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i15;
import 'package:planit/presentation/main/tab_bar.dart' as _i8;
import 'package:planit/presentation/order/order_details.dart' as _i9;
import 'package:planit/presentation/my_wallet/my_wallet_page.dart' as _i9;
import 'package:planit/presentation/order_list/order_list_page.dart' as _i10;
import 'package:planit/presentation/profile/profile_page.dart' as _i12;
import 'package:planit/presentation/search_product/serach_product_page.dart'
    as _i14;
import 'package:planit/presentation/talk_to_us/talk_to_us.dart' as _i17;
import 'package:planit/presentation/track_order/track_order_page.dart' as _i18;
import 'package:planit/presentation/wishlist/wishlist.dart' as _i19;
import 'package:planit/presentation/wishlist/wishlist_screen.dart' as _i20;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    AddressBookRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddressBookPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CheckoutPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoginOtp.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginOtp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    MainTabbar.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainTabbar(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OrderDetailsPage(),
    MyWalletRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyWalletPage(),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OrderListPage(),
      );
    },
    PlanRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PlanPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    ReadRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ReadPage(),
      );
    },
    SearchProductRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchProductPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ShopPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SignupPage(),
      );
    },
    TalkToUsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TalkToUsPage(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TrackOrderPage(),
      );
    },
    WishListRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.WishListPage(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddressBookPage]
class AddressBookRoute extends _i21.PageRouteInfo<void> {
  const AddressBookRoute({List<_i21.PageRouteInfo>? children})
      : super(
          AddressBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressBookRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i21.PageRouteInfo<void> {
  const CartRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryPage]
class CategoryRoute extends _i21.PageRouteInfo<void> {
  const CategoryRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CheckoutPage]
class CheckoutRoute extends _i21.PageRouteInfo<void> {
  const CheckoutRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginOtp]
class LoginOtp extends _i21.PageRouteInfo<void> {
  const LoginOtp({List<_i21.PageRouteInfo>? children})
      : super(
          LoginOtp.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtp';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i21.PageRouteInfo<void> {
  const LoginRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainTabbar]
class MainTabbar extends _i21.PageRouteInfo<void> {
  const MainTabbar({List<_i21.PageRouteInfo>? children})
      : super(
          MainTabbar.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbar';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OrderDetailsPage]
class OrderDetailsRoute extends _i21.PageRouteInfo<void> {
  const OrderDetailsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OrderDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';
/// [_i9.MyWalletPage]
class MyWalletRoute extends _i21.PageRouteInfo<void> {
  const MyWalletRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OrderListPage]
class OrderListRoute extends _i21.PageRouteInfo<void> {
  const OrderListRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PlanPage]
class PlanRoute extends _i21.PageRouteInfo<void> {
  const PlanRoute({List<_i21.PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i21.PageRouteInfo<void> {
  const ProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ReadPage]
class ReadRoute extends _i21.PageRouteInfo<void> {
  const ReadRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ReadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchProductPage]
class SearchProductRoute extends _i21.PageRouteInfo<void> {
  const SearchProductRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SearchProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchProductRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ShopPage]
class ShopRoute extends _i21.PageRouteInfo<void> {
  const ShopRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SignupPage]
class SignupRoute extends _i21.PageRouteInfo<void> {
  const SignupRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TalkToUsPage]
class TalkToUsRoute extends _i21.PageRouteInfo<void> {
  const TalkToUsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TalkToUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalkToUsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TrackOrderPage]
class TrackOrderRoute extends _i21.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WishListPage]
class WishListRoute extends _i21.PageRouteInfo<void> {
  const WishListRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.WishlistScreen]
class WishlistRoute extends _i21.PageRouteInfo<void> {
  const WishlistRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
