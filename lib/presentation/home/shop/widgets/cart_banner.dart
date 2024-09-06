import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/presentation/core/no_pincode_error_dialog.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class CartBanner extends StatelessWidget {
  const CartBanner({super.key, this.itemCount = 0, this.shoppingListValue = 0});
  final int shoppingListValue;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return BlocBuilder<CartBloc, CartState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state.isCartEmpty && itemCount == 0) {
              return const SizedBox();
            } else if (authState == const AuthState.unauthenticated()) {
              return Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                      right: 16,
                      left: 16,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGray,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      decoration: const BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          state.cartData.isNotEmpty
                              ? Text(
                                  '${state.cartData.length} items | ₹ ${state.totalLocalCartProductsPrice}',
                                  style: textTheme.bodySmall
                                      ?.copyWith(color: Colors.white),
                                )
                              : const SizedBox.shrink(),
                          const Spacer(),
                          TextButton(
                            onPressed: () =>
                                context.router.navigate(const CartRoute()),
                            child: Text(
                              'View Cart',
                              style: textTheme.bodySmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(22, -22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.lightGray,
                                blurRadius: 5,
                                offset: Offset(0, -4),
                              ),
                            ],
                          ),
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: Stack(
                              children: [
                                SvgPicture.asset(SvgImage.fabOutlineIcon),
                                Positioned(
                                  left: 10,
                                  right: 10,
                                  bottom: 0,
                                  top: 0,
                                  child: Image.asset(
                                    PngImage.planitLoginLogo,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            if (state.totalLocalCartProductsPrice > 120) {
                              return RichText(
                                text: TextSpan(
                                  text: 'Hooray ! FREE DELIVERY',
                                  style: textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' unlocked',
                                      style: textTheme.bodySmall?.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return RichText(
                              text: TextSpan(
                                text:
                                    'Add Items Worth Rs. ${120 - state.totalLocalCartProductsPrice} and Unlock ',
                                style:
                                    textTheme.bodySmall?.copyWith(fontSize: 10),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Free Delivery',
                                    style: textTheme.bodySmall?.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                    right: 16,
                    left: 16,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightGray,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        state.totalCartProductsCount + itemCount > 0
                            ? Text(
                                '${state.totalCartProductsCount + itemCount} items | ₹ ${state.cartItem.totalPrice.getValue() + shoppingListValue}',
                                style: textTheme.bodySmall
                                    ?.copyWith(color: Colors.white),
                              )
                            : const SizedBox.shrink(),
                        const Spacer(),
                        TextButton(
                          onPressed: () async {
                            if (context
                                .read<PincodeBloc>()
                                .state
                                .pincode
                                .isEmpty) {
                              await showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return const NoPincodeErrorDialog();
                                },
                              );
                            } else {
                              if (itemCount == 0) {
                                await context.router.navigate(
                                  const CartRoute(),
                                );
                              } else {
                                context.read<WishlistBloc>().add(
                                      const WishlistEvent.addAllItemToCart(),
                                    );
                              }
                            }
                          },
                          child: Text(
                            itemCount > 0 ? 'Add to Cart' : 'View Cart',
                            style: textTheme.bodySmall
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(22, -22),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.lightGray,
                              blurRadius: 5,
                              offset: Offset(0, -4),
                            ),
                          ],
                        ),
                        child: Transform.translate(
                          offset: const Offset(0, 0),
                          child: Stack(
                            children: [
                              SvgPicture.asset(SvgImage.fabOutlineIcon),
                              Positioned(
                                left: 10,
                                right: 10,
                                bottom: 0,
                                top: 0,
                                child: Image.asset(
                                  PngImage.planitLoginLogo,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          if (state.cartItem.totalPrice.getValue() > 120) {
                            return RichText(
                              text: TextSpan(
                                text: 'Hooray ! FREE DELIVERY',
                                style: textTheme.bodySmall?.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' unlocked',
                                    style: textTheme.bodySmall?.copyWith(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return RichText(
                            text: TextSpan(
                              text:
                                  'Add Items Worth Rs. ${120 - state.cartItem.totalPrice.getValue()} and Unlock ',
                              style:
                                  textTheme.bodySmall?.copyWith(fontSize: 10),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Free Delivery',
                                  style: textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
