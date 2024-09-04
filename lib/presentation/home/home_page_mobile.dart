import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_money/ui_state/payment_method.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/home/shop/widgets/location_pin.dart';
import 'package:planit/presentation/home/shop/widgets/search_bar.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:collection/collection.dart';
import 'package:planit/utils/string_constants.dart';

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
                CustomSnackbar.showSuccessMessage(
                  context,
                  StringConstant.successfullyLogIn,
                );
                context
                    .read<UserProfileBloc>()
                    .add(const UserProfileEvent.fetch());
                context.read<OrderBloc>().add(const OrderEvent.fetchOrders());
                context
                    .read<FavouriteRecipeBloc>()
                    .add(const FavouriteRecipeEvent.fetch());

                final cartBloc = context.read<CartBloc>();

                if (cartBloc.state.cartData.isNotEmpty) {
                  cartBloc.add(const CartEvent.sendLocalServerCart());
                }

                context
                    .read<AddressBookBloc>()
                    .add(const AddressBookEvent.fetch());
                context.read<WishlistBloc>().add(const WishlistEvent.fetch());
                context.read<CartBloc>().add(const CartEvent.fetch());
              },
              unauthenticated: () {
                context
                    .read<UserProfileBloc>()
                    .add(const UserProfileEvent.reset());
                context
                    .read<FavouriteRecipeBloc>()
                    .add(const FavouriteRecipeEvent.reset());
              },
            );
          },
        ),
        BlocListener<UserProfileBloc, UserProfileState>(
          listenWhen: (previous, current) =>
              previous.user != current.user && !current.user.isEmpty,
          listener: (context, state) {
            if (state.isProfileCompleted) {
              context.router.navigate(const HomeRoute());
            } else {
              context.router.navigate(
                UserProfileRoute(
                  isFirstLogin: true,
                ),
              );
            }
          },
        ),
        BlocListener<OrderBloc, OrderState>(
          listenWhen: (previous, current) =>
              previous.isFetching != current.isFetching && !current.isFetching,
          listener: (context, state) {
            state.apiFailureOrSuccessOption.fold(() => null, (a) {
              a.fold(
                (l) {
                  CustomSnackbar.showErrorMessage(context, l.failureMessage);
                },
                (r) {
                  CustomSnackbar.showSuccessMessage(
                    context,
                    StringConstant.orderPlacedSuccessfully,
                  );

                  context.router.navigate(const HomeRoute());
                  context.router.navigate(const OrderListRoute());
                  if (state.selectedPaymentMethod ==
                      const PaymentMethod.wallet()) {
                    context
                        .read<WalletBloc>()
                        .add(const WalletEvent.fetchBalance());
                    context
                        .read<WalletBloc>()
                        .add(const WalletEvent.fetchTransactionHistory());
                    context.read<OrderBloc>().add(
                          const OrderEvent.changePaymentMethod(
                            PaymentMethod.razorpay(),
                          ),
                        );
                  }
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
                            vertical: 8,
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
