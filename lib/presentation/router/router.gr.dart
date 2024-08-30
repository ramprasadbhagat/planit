// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i37;
import 'package:flutter/foundation.dart' as _i42;
import 'package:flutter/material.dart' as _i38;
import 'package:planit/domain/blog/enitities/blog.dart' as _i39;
import 'package:planit/domain/order/entities/order.dart' as _i40;
import 'package:planit/domain/recipe/entities/recipe.dart' as _i41;
import 'package:planit/presentation/add_money/add_money.dart' as _i2;
import 'package:planit/presentation/address_book/adress_book_page.dart' as _i3;
import 'package:planit/presentation/address_book/user_profile.dart' as _i34;
import 'package:planit/presentation/auth/login/login.dart' as _i15;
import 'package:planit/presentation/auth/otp/otp.dart' as _i14;
import 'package:planit/presentation/auth/signup/signup.dart' as _i31;
import 'package:planit/presentation/blogs/blog_details.dart' as _i4;
import 'package:planit/presentation/blogs/blog_search.dart' as _i5;
import 'package:planit/presentation/blogs/blogs_page.dart' as _i6;
import 'package:planit/presentation/cart/cart_page.dart' as _i7;
import 'package:planit/presentation/category/category_page.dart' as _i8;
import 'package:planit/presentation/checkout/checkout_page.dart' as _i9;
import 'package:planit/presentation/coupon/coupon_page.dart' as _i10;
import 'package:planit/presentation/favourite_recipe/favourite_recipes_page.dart'
    as _i11;
import 'package:planit/presentation/highlights/highLights.dart' as _i12;
import 'package:planit/presentation/home/home_page.dart' as _i13;
import 'package:planit/presentation/home/plan/plan_page.dart' as _i21;
import 'package:planit/presentation/home/read/read_page.dart' as _i24;
import 'package:planit/presentation/home/shop/shop_page.dart' as _i29;
import 'package:planit/presentation/main/tab_bar.dart' as _i16;
import 'package:planit/presentation/my_complains/add_complains/add_complains_page.dart'
    as _i1;
import 'package:planit/presentation/my_complains/my_complains_page.dart'
    as _i17;
import 'package:planit/presentation/my_wallet/my_wallet_page.dart' as _i18;
import 'package:planit/presentation/order/order_details.dart' as _i19;
import 'package:planit/presentation/order_list/order_list_page.dart' as _i20;
import 'package:planit/presentation/profile/profile_page.dart' as _i22;
import 'package:planit/presentation/quick_picks/quick_picks.dart' as _i23;
import 'package:planit/presentation/recipe/recipe_page.dart' as _i26;
import 'package:planit/presentation/recipe/search_recipes/search_recipes.dart'
    as _i28;
import 'package:planit/presentation/recipe_details/recipe_details.dart' as _i25;
import 'package:planit/presentation/search_product/serach_product_page.dart'
    as _i27;
import 'package:planit/presentation/shopping_list/shopping_list.dart' as _i30;
import 'package:planit/presentation/talk_to_us/talk_to_us.dart' as _i32;
import 'package:planit/presentation/track_order/track_order_page.dart' as _i33;
import 'package:planit/presentation/wishlist/wishlist.dart' as _i35;
import 'package:planit/presentation/wishlist/wishlist_screen.dart' as _i36;

abstract class $AppRouter extends _i37.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i37.PageFactory> pagesMap = {
    AddComplainsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddComplainsPage(),
      );
    },
    AddMoneyRoute.name: (routeData) {
      final args = routeData.argsAs<AddMoneyRouteArgs>(
          orElse: () => const AddMoneyRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AddMoneyPage(key: args.key),
      );
    },
    AddressBookRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddressBookPage(),
      );
    },
    BlogDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BlogDetailsRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BlogDetailsPage(
          key: args.key,
          blog: args.blog,
        ),
      );
    },
    BlogSearchRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BlogSearchPage(),
      );
    },
    BlogsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BlogsPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.CategoryPage(
          key: args.key,
          openFromOccassion: args.openFromOccassion,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CheckoutPage(),
      );
    },
    CouponListRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.CouponListPage(),
      );
    },
    FavouriteRecipesRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.FavouriteRecipesPage(),
      );
    },
    HighLightsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HighLightsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HomePage(),
      );
    },
    LoginOtp.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.LoginOtp(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.LoginPage(),
      );
    },
    MainTabbar.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.MainTabbar(),
      );
    },
    MyComplainsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.MyComplainsPage(),
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.MyWalletPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.OrderDetailsPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.OrderListPage(),
      );
    },
    PlanRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.PlanPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ProfilePage(),
      );
    },
    QuickPicksRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.QuickPicksPage(),
      );
    },
    ReadRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ReadPage(),
      );
    },
    RecipeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.RecipeDetailsPage(
          key: args.key,
          recipe: args.recipe,
        ),
      );
    },
    RecipesRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.RecipesPage(),
      );
    },
    SearchProductRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SearchProductPage(),
      );
    },
    SearchRecipesRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.SearchRecipesPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.ShopPage(),
      );
    },
    ShoppingListRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.ShoppingListPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.SignupPage(),
      );
    },
    TalkToUsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.TalkToUsPage(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.TrackOrderPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () => const UserProfileRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i34.UserProfilePage(
          key: args.key,
          isFirstLogin: args.isFirstLogin,
          fromCheckoutPage: args.fromCheckoutPage,
        ),
      );
    },
    WishListRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.WishListPage(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddComplainsPage]
class AddComplainsRoute extends _i37.PageRouteInfo<void> {
  const AddComplainsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AddComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddComplainsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMoneyPage]
class AddMoneyRoute extends _i37.PageRouteInfo<AddMoneyRouteArgs> {
  AddMoneyRoute({
    _i38.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          AddMoneyRoute.name,
          args: AddMoneyRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddMoneyRoute';

  static const _i37.PageInfo<AddMoneyRouteArgs> page =
      _i37.PageInfo<AddMoneyRouteArgs>(name);
}

class AddMoneyRouteArgs {
  const AddMoneyRouteArgs({this.key});

  final _i38.Key? key;

  @override
  String toString() {
    return 'AddMoneyRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AddressBookPage]
class AddressBookRoute extends _i37.PageRouteInfo<void> {
  const AddressBookRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AddressBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressBookRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BlogDetailsPage]
class BlogDetailsRoute extends _i37.PageRouteInfo<BlogDetailsRouteArgs> {
  BlogDetailsRoute({
    _i38.Key? key,
    required _i39.Blog blog,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          BlogDetailsRoute.name,
          args: BlogDetailsRouteArgs(
            key: key,
            blog: blog,
          ),
          initialChildren: children,
        );

  static const String name = 'BlogDetailsRoute';

  static const _i37.PageInfo<BlogDetailsRouteArgs> page =
      _i37.PageInfo<BlogDetailsRouteArgs>(name);
}

class BlogDetailsRouteArgs {
  const BlogDetailsRouteArgs({
    this.key,
    required this.blog,
  });

  final _i38.Key? key;

  final _i39.Blog blog;

  @override
  String toString() {
    return 'BlogDetailsRouteArgs{key: $key, blog: $blog}';
  }
}

/// generated route for
/// [_i5.BlogSearchPage]
class BlogSearchRoute extends _i37.PageRouteInfo<void> {
  const BlogSearchRoute({List<_i37.PageRouteInfo>? children})
      : super(
          BlogSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogSearchRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BlogsPage]
class BlogsRoute extends _i37.PageRouteInfo<void> {
  const BlogsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          BlogsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CartPage]
class CartRoute extends _i37.PageRouteInfo<void> {
  const CartRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CategoryPage]
class CategoryRoute extends _i37.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    _i38.Key? key,
    bool openFromOccassion = false,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            openFromOccassion: openFromOccassion,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i37.PageInfo<CategoryRouteArgs> page =
      _i37.PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    this.openFromOccassion = false,
  });

  final _i38.Key? key;

  final bool openFromOccassion;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, openFromOccassion: $openFromOccassion}';
  }
}

/// generated route for
/// [_i9.CheckoutPage]
class CheckoutRoute extends _i37.PageRouteInfo<void> {
  const CheckoutRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i10.CouponListPage]
class CouponListRoute extends _i37.PageRouteInfo<void> {
  const CouponListRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CouponListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CouponListRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i11.FavouriteRecipesPage]
class FavouriteRecipesRoute extends _i37.PageRouteInfo<void> {
  const FavouriteRecipesRoute({List<_i37.PageRouteInfo>? children})
      : super(
          FavouriteRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRecipesRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HighLightsPage]
class HighLightsRoute extends _i37.PageRouteInfo<void> {
  const HighLightsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HighLightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HighLightsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i13.HomePage]
class HomeRoute extends _i37.PageRouteInfo<void> {
  const HomeRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i14.LoginOtp]
class LoginOtp extends _i37.PageRouteInfo<void> {
  const LoginOtp({List<_i37.PageRouteInfo>? children})
      : super(
          LoginOtp.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtp';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i15.LoginPage]
class LoginRoute extends _i37.PageRouteInfo<void> {
  const LoginRoute({List<_i37.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i16.MainTabbar]
class MainTabbar extends _i37.PageRouteInfo<void> {
  const MainTabbar({List<_i37.PageRouteInfo>? children})
      : super(
          MainTabbar.name,
          initialChildren: children,
        );

  static const String name = 'MainTabbar';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i17.MyComplainsPage]
class MyComplainsRoute extends _i37.PageRouteInfo<void> {
  const MyComplainsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MyComplainsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyComplainsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i18.MyWalletPage]
class MyWalletRoute extends _i37.PageRouteInfo<void> {
  const MyWalletRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i19.OrderDetailsPage]
class OrderDetailsRoute extends _i37.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i38.Key? key,
    required _i40.Order order,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const _i37.PageInfo<OrderDetailsRouteArgs> page =
      _i37.PageInfo<OrderDetailsRouteArgs>(name);
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    required this.order,
  });

  final _i38.Key? key;

  final _i40.Order order;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i20.OrderListPage]
class OrderListRoute extends _i37.PageRouteInfo<void> {
  const OrderListRoute({List<_i37.PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i21.PlanPage]
class PlanRoute extends _i37.PageRouteInfo<void> {
  const PlanRoute({List<_i37.PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ProfilePage]
class ProfileRoute extends _i37.PageRouteInfo<void> {
  const ProfileRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i23.QuickPicksPage]
class QuickPicksRoute extends _i37.PageRouteInfo<void> {
  const QuickPicksRoute({List<_i37.PageRouteInfo>? children})
      : super(
          QuickPicksRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuickPicksRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ReadPage]
class ReadRoute extends _i37.PageRouteInfo<void> {
  const ReadRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ReadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i25.RecipeDetailsPage]
class RecipeDetailsRoute extends _i37.PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({
    _i38.Key? key,
    required _i41.Recipe recipe,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          RecipeDetailsRoute.name,
          args: RecipeDetailsRouteArgs(
            key: key,
            recipe: recipe,
          ),
          initialChildren: children,
        );

  static const String name = 'RecipeDetailsRoute';

  static const _i37.PageInfo<RecipeDetailsRouteArgs> page =
      _i37.PageInfo<RecipeDetailsRouteArgs>(name);
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({
    this.key,
    required this.recipe,
  });

  final _i38.Key? key;

  final _i41.Recipe recipe;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{key: $key, recipe: $recipe}';
  }
}

/// generated route for
/// [_i26.RecipesPage]
class RecipesRoute extends _i37.PageRouteInfo<void> {
  const RecipesRoute({List<_i37.PageRouteInfo>? children})
      : super(
          RecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecipesRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i27.SearchProductPage]
class SearchProductRoute extends _i37.PageRouteInfo<void> {
  const SearchProductRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SearchProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchProductRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i28.SearchRecipesPage]
class SearchRecipesRoute extends _i37.PageRouteInfo<void> {
  const SearchRecipesRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SearchRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRecipesRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ShopPage]
class ShopRoute extends _i37.PageRouteInfo<void> {
  const ShopRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i30.ShoppingListPage]
class ShoppingListRoute extends _i37.PageRouteInfo<void> {
  const ShoppingListRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ShoppingListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SignupPage]
class SignupRoute extends _i37.PageRouteInfo<void> {
  const SignupRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i32.TalkToUsPage]
class TalkToUsRoute extends _i37.PageRouteInfo<void> {
  const TalkToUsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          TalkToUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalkToUsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i33.TrackOrderPage]
class TrackOrderRoute extends _i37.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i37.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i34.UserProfilePage]
class UserProfileRoute extends _i37.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i42.Key? key,
    bool isFirstLogin = false,
    bool fromCheckoutPage = false,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UserProfileRoute.name,
          args: UserProfileRouteArgs(
            key: key,
            isFirstLogin: isFirstLogin,
            fromCheckoutPage: fromCheckoutPage,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i37.PageInfo<UserProfileRouteArgs> page =
      _i37.PageInfo<UserProfileRouteArgs>(name);
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    this.isFirstLogin = false,
    this.fromCheckoutPage = false,
  });

  final _i42.Key? key;

  final bool isFirstLogin;

  final bool fromCheckoutPage;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, isFirstLogin: $isFirstLogin, fromCheckoutPage: $fromCheckoutPage}';
  }
}

/// generated route for
/// [_i35.WishListPage]
class WishListRoute extends _i37.PageRouteInfo<void> {
  const WishListRoute({List<_i37.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i36.WishlistScreen]
class WishlistRoute extends _i37.PageRouteInfo<void> {
  const WishlistRoute({List<_i37.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}
