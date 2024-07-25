import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/my_complain/complain_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/application/search_product/search_product_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/presentation/theme/theme_data.dart';
import 'package:planit/utils/storage_service.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  final config = locator<Config>();
  final storageService = locator<StorageService>();
  await storageService.init();
  config.appFlavor = flavor;
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormBloc>(
          create: (context) => locator<LoginFormBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>()..add(const AuthEvent.init()),
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => locator<CategoryBloc>(),
        ),
        BlocProvider<HighlightProductBloc>(
          create: (context) => locator<HighlightProductBloc>(),
        ),
        BlocProvider<QuickPicksBloc>(
          create: (context) => locator<QuickPicksBloc>(),
        ),
        BlocProvider<CartBloc>(
          create: (context) =>
              locator<CartBloc>()..add(const CartEvent.getCartLocal()),
        ),
        BlocProvider<SubCategoryBloc>(
          create: (context) => locator<SubCategoryBloc>(),
        ),
        BlocProvider<SimilarProductBloc>(
          create: (context) => locator<SimilarProductBloc>(),
        ),
        BlocProvider<BannerBloc>(
          create: (context) => locator<BannerBloc>(),
        ),
        BlocProvider<SearchProductBloc>(
          create: (context) => locator<SearchProductBloc>(),
        ),
        BlocProvider<WishlistBloc>(
          create: (context) => locator<WishlistBloc>(),
        ),
        BlocProvider<PincodeBloc>(
          create: (context) =>
              locator<PincodeBloc>()..add(const PincodeEvent.initialized()),
        ),
        BlocProvider<AddressBookBloc>(
          create: (context) => locator<AddressBookBloc>(),
        ),
        BlocProvider<OrderBloc>(
          create: (context) => locator<OrderBloc>(),
        ),
        BlocProvider<CouponBloc>(
          create: (context) => locator<CouponBloc>(),
        ),
        BlocProvider<TrackOrderBloc>(
          create: (context) => locator<TrackOrderBloc>(),
        ),
        BlocProvider<UserProfileBloc>(
          create: (context) => locator<UserProfileBloc>(),
        ),
        BlocProvider<ComplainBloc>(
          create: (context) => locator<ComplainBloc>(),
        ),
        BlocProvider<AddReviewBloc>(
          create: (context) => locator<AddReviewBloc>(),
        ),
        BlocProvider<RecipeBloc>(
          create: (context) => locator<RecipeBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: locator<Config>().appName,
        theme: appThemeData[AppTheme.light],
        routerConfig: router.config(),
      ),
    );
  }
}
