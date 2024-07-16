import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/presentation/checkout/widgets/checkout_product_card.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CheckoutProductSection extends StatelessWidget {
  const CheckoutProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<CartBloc, CartState>(
          buildWhen: (previous, current) =>
              previous.cartItem != current.cartItem ||
              previous.isFetchingDeliveryCharge !=
                  current.isFetchingDeliveryCharge,
          builder: (context, state) {
            return Column(
              children: [
                ...state.cartItem.products.map(
                  (e) => ChecoutItemCard(
                    cartProduct: e,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 6,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.lightGray,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        '₹${state.cartItem.totalPrice.getValue()}',
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 6,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Skeletonizer(
                    enabled: state.isFetchingDeliveryCharge,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.lightGray,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          state.getDeliveryChargeDisplayString,
                          style: textTheme.bodySmall?.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 6,
                //     right: 6,
                //     top: 5,
                //     bottom: 5,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Tax',
                //         style: textTheme.bodySmall?.copyWith(
                //           fontSize: 14,
                //           color: AppColors.lightGray,
                //           fontWeight: FontWeight.w400,
                //         ),
                //         textAlign: TextAlign.start,
                //       ),
                //       Text(
                //         '₹10',
                //         style: textTheme.bodySmall?.copyWith(
                //           fontSize: 13,
                //           fontWeight: FontWeight.w400,
                //         ),
                //         textAlign: TextAlign.start,
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 6,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'total',
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.lightGray,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      BlocBuilder<CouponBloc, CouponState>(
                        builder: (context, couponState) {
                          return Text(
                            '₹${couponState.appliedCoupon.priceAfterCoupon(state.cartItem.totalPrice.getValue()) + state.deliveryCharges}',
                            style: textTheme.bodySmall?.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.start,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
