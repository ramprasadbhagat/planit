import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/presentation/checkout/widgets/checkout_product_section.dart';
import 'package:planit/presentation/checkout/widgets/deliver_address_section.dart';
import 'package:planit/presentation/checkout/widgets/delivery_date_section.dart';
import 'package:planit/presentation/checkout/widgets/payment_section.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var date = '';
    var paymentMethod = '';
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
                        date = DateFormat('yyyy-MM-dd').format(e!);
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
                Row(
                  children: [
                    SvgPicture.asset(
                      SvgImage.coupon,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Use Coupons',
                      style: textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: AppColors.grey2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final cartState = context.read<CartBloc>().state;
                      final addressState =
                          context.read<AddressBookBloc>().state;
                      context.read<OrderBloc>().add(
                            OrderEvent.submitOrder(
                              cartItem: cartState.cartItem,
                              addressBook: addressState.selectedAddress,
                              date: date,
                            ),
                          );
                      const snackBar = SnackBar(
                        content: Text('Order placed successfully'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      context.router.navigate(const OrderListRoute());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: AppColors.black,
                      maximumSize: const Size(330, 50),
                    ),
                    child: const Text('Proceed to payment'),
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
