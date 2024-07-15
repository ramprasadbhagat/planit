// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i32;
import 'package:flutter/material.dart' as _i33;
import 'package:planit/domain/order/entities/order.dart' as _i34;
import 'package:planit/presentation/add_money/add_money.dart' as _i2;
import 'package:planit/presentation/address_book/adress_book_page.dart' as _i3;
import 'package:planit/presentation/address_book/user_profile.dart' as _i29;
import 'package:planit/presentation/auth/login/login.dart' as _i12;
import 'package:planit/presentation/auth/otp/otp.dart' as _i11;
import 'package:planit/presentation/auth/signup/signup.dart' as _i26;
import 'package:planit/presentation/cart/cart_page.dart' as _i4;
import 'package:planit/presentation/category/category_page.dart' as _i5;
import 'package:planit/presentation/checkout/checkout_page.dart' as _i6;
import 'package:planit/presentation/coupon/coupon_page.dart' as _i7;
import 'package:planit/presentation/favourite_recipe/favourite_recipes_page.dart'
    as _i8;
import 'package:planit/presentation/highlights/highLights.dart' as _i9;
import 'package:planit/presentation/home/home_page.dart' as _i10;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i18;
import 'package:planit/presentation/home/read/read_page.dart' as _i21;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i24;
import 'package:planit/presentation/main/tab_bar.dart' as _i13;
import 'package:planit/presentation/my_complains/add_complains/add_complains_page.dart'
    as _i1;
import 'package:planit/presentation/my_complains/my_complains_page.dart'
    as _i14;
import 'package:planit/presentation/my_wallet/my_wallet_page.dart' as _i15;
import 'package:planit/presentation/order/order_details.dart' as _i16;
import 'package:planit/presentation/order_list/order_list_page.dart' as _i17;
import 'package:planit/presentation/profile/profile_page.dart' as _i19;
import 'package:planit/presentation/quick_picks/quick_picks.dart' as _i20;
import 'package:planit/presentation/recipe_details/recipe_details.dart' as _i22;
import 'package:planit/presentation/search_product/serach_product_page.dart'
    as _i23;
import 'package:planit/presentation/shopping_list/shopping_list.dart' as _i25;
import 'package:planit/presentation/talk_to_us/talk_to_us.dart' as _i27;
import 'package:planit/presentation/track_order/track_order_page.dart' as _i28;
import 'package:planit/presentation/wishlist/wishlist.dart' as _i30;
import 'package:planit/presentation/wishlist/wishlist_screen.dart' as _i31;

abstract class $AppRouter extends _i32.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    AddComplainsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddComplainsPage(),
      );
    },
    AddMoneyRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddMoneyPage(),
      );
    },
    AddressBookRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddressBookPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CategoryPage(
          key: args.key,
          openFromOccassion: args.openFromOccassion,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CheckoutPage(),
      );
    },
    CouponListRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CouponListPage(),
      );
    },
    FavouriteRecipesRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.FavouriteRecipesPage(),
      );
    },
    HighLightsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HighLightsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HomePage(),
      );
    },
    LoginOtp.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.LoginOtp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.LoginPage(),
      );
    },
    MainTabbar.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.MainTabbar(),
      );
    },
    MyComplainsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MyComplainsPage(),
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.MyWalletPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.OrderDetailsPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.OrderListPage(),
      );
    },
    PlanRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.PlanPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ProfilePage(),
      );
    },
    QuickPicksRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.QuickPicksPage(),
      );
    },
    ReadRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ReadPage(),
      );
    },
    RecipeDetailsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.RecipeDetailsPage(),
      );
    },
    SearchProductRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.SearchProductPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ShopPage(),
      );
    },
    ShoppingListRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ShoppingListPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SignupPage(),
      );
    },
    TalkToUsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.TalkToUsPage(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.TrackOrderPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.UserProfilePage(),
      );
    },
    WishListRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.WishListPage(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddComplainsPage]
class AddComplainsRoute extends _i32.PageRouteInfo<void> {
  const AddComplainsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          AddComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddComplainsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMoneyPage]
class AddMoneyRoute extends _i32.PageRouteInfo<void> {
  const AddMoneyRoute({List<_i32.PageRouteInfo>? children})
      : super(
          AddMoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMoneyRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddressBookPage]
class AddressBookRoute extends _i32.PageRouteInfo<void> {
  const AddressBookRoute({List<_i32.PageRouteInfo>? children})
      : super(
          AddressBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressBookRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CartPage]
class CartRoute extends _i32.PageRouteInfo<void> {
  const CartRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CategoryPage]
class CategoryRoute extends _i32.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    _i33.Key? key,
    bool openFromOccassion = false,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            openFromOccassion: openFromOccassion,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i32.PageInfo<CategoryRouteArgs> page =
      _i32.PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    this.openFromOccassion = false,
  });

  final _i33.Key? key;

  final bool openFromOccassion;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, openFromOccassion: $openFromOccassion}';
  }
}

/// generated route for
/// [_i6.CheckoutPage]
class CheckoutRoute extends _i32.PageRouteInfo<void> {
  const CheckoutRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CouponListPage]
class CouponListRoute extends _i32.PageRouteInfo<void> {
  const CouponListRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CouponListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CouponListRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i8.FavouriteRecipesPage]
class FavouriteRecipesRoute extends _i32.PageRouteInfo<void> {
  const FavouriteRecipesRoute({List<_i32.PageRouteInfo>? children})
      : super(
          FavouriteRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRecipesRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HighLightsPage]
class HighLightsRoute extends _i32.PageRouteInfo<void> {
  const HighLightsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          HighLightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HighLightsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i32.PageRouteInfo<void> {
  const HomeRoute({List<_i32.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginOtp]
class LoginOtp extends _i32.PageRouteInfo<void> {
  const LoginOtp({List<_i32.PageRouteInfo>? children})
      : super(
          LoginOtp.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtp';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i12.LoginPage]
class LoginRoute extends _i32.PageRouteInfo<void> {
  const LoginRoute({List<_i32.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MainTabbar]
class MainTabbar extends _i32.PageRouteInfo<void> {
  const MainTabbar({List<_i32.PageRouteInfo>? children})
      : super(
          MainTabbar.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbar';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MyComplainsPage]
class MyComplainsRoute extends _i32.PageRouteInfo<void> {
  const MyComplainsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          MyComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyComplainsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MyWalletPage]
class MyWalletRoute extends _i32.PageRouteInfo<void> {
  const MyWalletRoute({List<_i32.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i16.OrderDetailsPage]
class OrderDetailsRoute extends _i32.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i33.Key? key,
    required _i34.Order order,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const _i32.PageInfo<OrderDetailsRouteArgs> page =
      _i32.PageInfo<OrderDetailsRouteArgs>(name);
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    required this.order,
  });

  final _i33.Key? key;

  final _i34.Order order;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i17.OrderListPage]
class OrderListRoute extends _i32.PageRouteInfo<void> {
  const OrderListRoute({List<_i32.PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PlanPage]
class PlanRoute extends _i32.PageRouteInfo<void> {
  const PlanRoute({List<_i32.PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ProfilePage]
class ProfileRoute extends _i32.PageRouteInfo<void> {
  const ProfileRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i20.QuickPicksPage]
class QuickPicksRoute extends _i32.PageRouteInfo<void> {
  const QuickPicksRoute({List<_i32.PageRouteInfo>? children})
      : super(
          QuickPicksRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuickPicksRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ReadPage]
class ReadRoute extends _i32.PageRouteInfo<void> {
  const ReadRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ReadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i22.RecipeDetailsPage]
class RecipeDetailsRoute extends _i32.PageRouteInfo<void> {
  const RecipeDetailsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          RecipeDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecipeDetailsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i23.SearchProductPage]
class SearchProductRoute extends _i32.PageRouteInfo<void> {
  const SearchProductRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SearchProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchProductRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ShopPage]
class ShopRoute extends _i32.PageRouteInfo<void> {
  const ShopRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ShoppingListPage]
class ShoppingListRoute extends _i32.PageRouteInfo<void> {
  const ShoppingListRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ShoppingListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SignupPage]
class SignupRoute extends _i32.PageRouteInfo<void> {
  const SignupRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i27.TalkToUsPage]
class TalkToUsRoute extends _i32.PageRouteInfo<void> {
  const TalkToUsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          TalkToUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalkToUsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i28.TrackOrderPage]
class TrackOrderRoute extends _i32.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i32.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i29.UserProfilePage]
class UserProfileRoute extends _i32.PageRouteInfo<void> {
  const UserProfileRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i30.WishListPage]
class WishListRoute extends _i32.PageRouteInfo<void> {
  const WishListRoute({List<_i32.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i31.WishlistScreen]
class WishlistRoute extends _i32.PageRouteInfo<void> {
  const WishlistRoute({List<_i32.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}
