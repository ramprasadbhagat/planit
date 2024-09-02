import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/application/best_seller/best_seller_bloc.dart';
import 'package:planit/application/blog/blog_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';
import 'package:planit/presentation/core/no_pincode_error_dialog.dart';
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
    context.read<SubCategoryBloc>().add(
          const SubCategoryEvent.getShopByCategory(),
        );
    context.read<SubCategoryBloc>().add(
          const SubCategoryEvent.getShopByOcassion(),
        );
    context.read<WishlistBloc>().add(
          const WishlistEvent.fetch(),
        );
    context.read<CartBloc>().add(const CartEvent.fetch());
    context.read<BannerBloc>().add(
          const BannerEvent.fetch(),
        );
    context.read<AddressBookBloc>().add(const AddressBookEvent.fetch());
    context.read<CouponBloc>().add(const CouponEvent.fetch());
    context.read<RecipeBloc>().add(const RecipeEvent.fetch());

    context.read<BlogBloc>().add(const BlogEvent.fetchBlogs());
    context.read<WalletBloc>().add(const WalletEvent.fetchBalance());
    context.read<WalletBloc>().add(const WalletEvent.fetchTransactionHistory());
    context.read<BestSellerBloc>().add(const BestSellerEvent.fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WishlistBloc, WishlistState>(
          listener: (context, state) {
            if (state.showSnackBar) {
              state.apiFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      content: Text(failure.failureMessage),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  (_) {},
                ),
              );
            }
          },
          listenWhen: (previous, current) =>
              previous.apiFailureOrSuccessOption !=
              current.apiFailureOrSuccessOption,
        ),
        BlocListener<WishlistBloc, WishlistState>(
          listener: (context, state) {
            if (state.showSnackBar) {
              const snackBar = SnackBar(
                content: Text('Item Added to WishList'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          listenWhen: (previous, current) =>
              previous.getAllWishList.length < current.getAllWishList.length,
        ),
        BlocListener<CategoryBloc, CategoryState>(
          listenWhen: (previous, current) =>
              previous.selectedCategory != current.selectedCategory,
          listener: (context, state) {
            context.read<SubCategoryBloc>().add(
                  SubCategoryEvent.select(
                    state.selectedCategory.subCategory.firstOrNull ??
                        SubCategory.empty(),
                  ),
                );
          },
        ),
      ],
      child: AutoTabsScaffold(
        routes: _getTabs(context).map((item) => item.route).toList(),
        bottomNavigationBuilder: (_, tabsRouter) {
          final categoryBloc = context.read<CategoryBloc>();
          return BottomNavigationBar(
            key: WidgetKeys.homeTabBar,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: AppColors.black,
            onTap: (index) async {
              if (index == 2) {
                categoryBloc.add(const CategoryEvent.selectOccasion(false));
                categoryBloc.add(
                  CategoryEvent.select(
                    categoryBloc.state.categories.first,
                  ),
                );
              }
              if (index == 4 &&
                  context.read<AuthBloc>().state !=
                      const AuthState.unauthenticated() &&
                  context.read<PincodeBloc>().state.pincode.isEmpty) {
                await showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return const NoPincodeErrorDialog();
                  },
                );
                return;
              }
              tabsRouter.setActiveIndex(index);
            },
            items: _getTabs(context)
                .map(
                  (item) => item == cartTabRouteItem
                      ? BottomNavigationBarItem(
                          icon: BlocBuilder<CartBloc, CartState>(
                            builder: (context, state) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    item.icon,
                                    height: 25,
                                  ),
                                  Positioned(
                                    top: -10,
                                    right: -10,
                                    child: state.isCartEmpty
                                        ? const SizedBox.shrink()
                                        : Container(
                                            height: 20,
                                            width: 20,
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.red,
                                            ),
                                            child: Text(
                                              context.read<AuthBloc>().state ==
                                                      const AuthState
                                                          .unauthenticated()
                                                  ? state.cartData.length
                                                      .toString()
                                                  : state
                                                      .cartItem.products.length
                                                      .toString(),
                                              style: const TextStyle(
                                                color: AppColors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                  ),
                                ],
                              );
                            },
                          ),
                          label: item.label,
                        )
                      : BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            item.icon,
                            height: 25,
                          ),
                          label: item.label,
                        ),
                )
                .toList(),
          );
        },
      ),
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

RouteItem homeTabRouteItem = const RouteItem(
  route: HomeRoute(),
  icon: SvgImage.homeTabIcon,
  label: 'Home',
);

RouteItem talkToUsTabRouteItem = const RouteItem(
  route: TalkToUsRoute(),
  icon: SvgImage.talkUoUsTabIcon,
  label: 'Talk to us',
);

RouteItem categoryTabRouteItem = RouteItem(
  route: CategoryRoute(),
  icon: SvgImage.categoryTabIcon,
  label: 'Category',
);

RouteItem wishlistTabRouteItem = const RouteItem(
  route: ShoppingListRoute(),
  icon: SvgImage.checkListTabIcon,
  label: 'Shopping list',
);

RouteItem cartTabRouteItem = const RouteItem(
  route: CartRoute(),
  icon: SvgImage.cartTabIcon,
  label: 'Cart',
);

class RouteItem {
  final PageRouteInfo<dynamic> route;
  final String icon;
  final String label;

  const RouteItem({
    required this.route,
    required this.icon,
    required this.label,
  });
}
