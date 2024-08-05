import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/home/shop/widgets/location_pin.dart';
import 'package:planit/presentation/home/shop/widgets/search_bar.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:collection/collection.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});
  static List<String> tabs = ['Shop', 'Read', 'Plan'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) =>
              previous.isUnAuthenticated != current.isUnAuthenticated,
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (auth) {
                context
                    .read<UserProfileBloc>()
                    .add(const UserProfileEvent.fetch());
                context.read<OrderBloc>().add(const OrderEvent.fetchOrders());
              },
              unauthenticated: () {
                context
                    .read<UserProfileBloc>()
                    .add(const UserProfileEvent.reset());
              },
            );
          },
        ),
        BlocListener<UserProfileBloc, UserProfileState>(
          listenWhen: (previous, current) =>
              previous.user != current.user &&
              !current.user.isEmpty &&
              !current.isProfileCompleted &&
              !current.user.isFirstLogin,
          listener: (context, state) {
            context.router.navigate(
              UserProfileRoute(
                isFirstLogin: true,
              ),
            );
          },
        ),
        BlocListener<OrderBloc, OrderState>(
          listenWhen: (previous, current) =>
              previous.isFetching != current.isFetching && !current.isFetching,
          listener: (context, state) {
            state.apiFailureOrSuccessOption.fold(() => null, (a) {
              a.fold(
                (l) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(l.failureMessage),
                      backgroundColor: AppColors.red,
                    ),
                  );
                },
                (r) {
                  const snackBar = SnackBar(
                    content: Text('Order placed successfully'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  context.router.navigate(const HomeRoute());
                  context.router.navigate(const OrderListRoute());
                },
              );
            });
          },
        ),
        BlocListener<OrderBloc, OrderState>(
          listenWhen: (previous, current) => previous.orders != current.orders,
          listener: (context, state) {
            context.read<CartBloc>().add(const CartEvent.fetch());
          },
        ),
        BlocListener<CartBloc, CartState>(
          listenWhen: (previous, current) =>
              previous.cartItem != current.cartItem &&
              previous.isFetching != current.isFetching &&
              !current.isFetching,
          listener: (context, state) {
            final addressBook =
                context.read<AddressBookBloc>().state.selectedAddress;
            if (addressBook.pincode.isNotEmpty) {
              context.read<CartBloc>().add(
                    CartEvent.fetchShippingCharge(
                      pincode: addressBook.pincode,
                    ),
                  );
            }
          },
        ),
        BlocListener<AddressBookBloc, AddressBookState>(
          listenWhen: (previous, current) =>
              previous.selectedAddress != current.selectedAddress,
          listener: (context, state) {
            if (state.selectedAddress.pincode.isNotEmpty) {
              context.read<CartBloc>().add(
                    CartEvent.fetchShippingCharge(
                      pincode: state.selectedAddress.pincode,
                    ),
                  );
            }
          },
        ),
        BlocListener<FavouriteRecipeBloc, FavouriteRecipeState>(
          listenWhen: (previous, current) =>
              previous.favouriteRecipes != current.favouriteRecipes,
          listener: (context, state) {
            // if (state.selectedAddress.pincode.isNotEmpty) {
            //   context.read<CartBloc>().add(
            //         CartEvent.fetchShippingCharge(
            //           pincode: state.selectedAddress.pincode,
            //         ),
            //       );
            // }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const LocationPin(),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: AutoTabsRouter.tabBar(
                routes: const [ShopRoute(), ReadRoute(), PlanRoute()],
                builder: (context, child, tabController) => Column(
                  children: [
                    Column(
                      children: [
                        TabBar(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ),
                          controller: tabController,
                          labelStyle: textTheme.labelMedium,
                          indicator: const BoxDecoration(),
                          labelColor: AppColors.white,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                          tabs: tabs.mapIndexed(
                            (index, title) {
                              final isSelected = tabController.index == index;
                              return Container(
                                width: MediaQuery.sizeOf(context).width * 0.31,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.black
                                      : AppColors.white,
                                  border: Border.all(
                                    color: isSelected
                                        ? AppColors.black
                                        : AppColors.lightGray2,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  title,
                                  style: textTheme.labelSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: isSelected
                                        ? AppColors.white
                                        : AppColors.black,
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                        const HomeSearchBar(),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
