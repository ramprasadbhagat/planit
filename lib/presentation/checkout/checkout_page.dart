import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/presentation/checkout/widgets/checkout_product_section.dart';
import 'package:planit/presentation/checkout/widgets/deliver_address_section.dart';
import 'package:planit/presentation/checkout/widgets/delivery_date_section.dart';
import 'package:planit/presentation/checkout/widgets/payment_section.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String date = '';
  String paymentMethod = '';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 20,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.lightGrey,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CheckoutProductSection(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Select Your Delivery Date',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DeliveryDateSection(
                      onChanged: (e) {
                        setState(() {
                          date = DateFormat('yyyy-MM-dd').format(e!);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '* Your expected date of delivery is on 7th June 2024 , Monday , at 7:00 - 8:00 pm',
                      style: textTheme.labelSmall
                          ?.copyWith(color: AppColors.grey2, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Delivery Address',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const DeliveryAddressSection(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Payment',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PaymentSection(
                      onPaymentChanged: (value) {
                        paymentMethod = value!;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 3,
                  color: AppColors.extraLightGray,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                BlocBuilder<CouponBloc, CouponState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        context.router.navigate(const CouponListRoute());
                      },
                      child: Skeletonizer(
                        enabled: state.isFetching,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              SvgImage.coupon,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            state.appliedCoupon == Coupon.empty()
                                ? Text(
                                    'Use Coupons',
                                    style: textTheme.bodyMedium,
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        '₹${state.appliedCoupon.amount} saved on this order!',
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: AppColors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () => context
                                            .read<CouponBloc>()
                                            .add(
                                              const CouponEvent.removeCoupon(),
                                            ),
                                        child: Text(
                                          'Remove',
                                          style: textTheme.bodyMedium?.copyWith(
                                            color: AppColors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: AppColors.grey2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: paymentMethod == 'Cash on delivery'
                        ? () {
                            final cartState = context.read<CartBloc>().state;
                            final addressState =
                                context.read<AddressBookBloc>().state;
                            context.read<OrderBloc>().add(
                                  OrderEvent.submitOrder(
                                    cartItem: cartState.cartItem,
                                    addressBook: addressState.selectedAddress,
                                    date: date,
                                    coupon: context
                                        .read<CouponBloc>()
                                        .state
                                        .appliedCoupon,
                                  ),
                                );
                            const snackBar = SnackBar(
                              content: Text('Order placed successfully'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            context.router.navigate(const OrderListRoute());
                          }
                        : () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: paymentMethod == 'Cash on delivery'
                          ? AppColors.black
                          : AppColors.lightGray,
                      maximumSize: const Size(330, 50),
                    ),
                    child: Text(
                      paymentMethod == 'Cash on delivery'
                          ? 'Place Order'
                          : 'Proceed to payment',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
