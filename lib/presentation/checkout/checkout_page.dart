import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/coupon/entities/coupon.dart';
import 'package:planit/presentation/checkout/widgets/checkout_product_section.dart';
import 'package:planit/presentation/checkout/widgets/deliver_address_section.dart';
import 'package:planit/presentation/checkout/widgets/delivery_date_section.dart';
import 'package:planit/presentation/checkout/widgets/payment_section.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/loading_shimmer/loading_shimmer.dart';
import 'package:planit/presentation/core/pin_code_dialog_box/pin_code_dialog_box.dart';
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
  DateTime date = DateTime.now();
  @override
  void initState() {
    context.read<OrderBloc>().add(const OrderEvent.checkDeliveryDate());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: textTheme.labelLarge,
        ),
        leadingWidth: 30,
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
                    BlocBuilder<OrderBloc, OrderState>(
                      buildWhen: (previous, current) =>
                          previous.isFetchingDeliveryDate !=
                          current.isFetchingDeliveryDate,
                      builder: (context, orderState) {
                        date = orderState.deliveryTime.date.dateTimeOrNull ??
                            DateTime.now();
                        return LoadingShimmer.withChild(
                          enabled: orderState.isFetchingDeliveryDate,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DeliveryDateSection(
                                onChanged: (e) {
                                  setState(() {
                                    date = e!;
                                    context.read<OrderBloc>().add(
                                          OrderEvent.checkDeliveryDate(
                                            isDeliveryDateSelectedByUser: true,
                                            selectedDate:
                                                DateFormat('yyyy-MM-dd')
                                                    .format(e),
                                          ),
                                        );
                                  });
                                },
                                initialDate: date,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                '* Your expected date of delivery is on ${orderState.deliveryTime.date.dateString} , at ${orderState.deliveryTime.startTime.displayOnlyHours} - ${orderState.deliveryTime.endTime.displayOnlyHours}',
                                style: textTheme.labelSmall?.copyWith(
                                  color: AppColors.grey2,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
                    const PaymentSection(),
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
                const ErrorMessage(),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<CouponBloc, CouponState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        if (state.appliedCoupon == Coupon.empty()) {
                          context.read<CouponBloc>().add(
                                const CouponEvent.clearCoupons(),
                              );
                        } else {}
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
                                        '₹${state.appliedCoupon.amount(context.read<CartBloc>().state.cartItem.totalPrice.getValue())} saved on this order!',
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
                PlaceOrderButton(
                  date: DateFormat('yyyy-MM-dd').format(date),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({
    super.key,
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    final isProfileCompleted = context.select<UserProfileBloc, bool>(
      (value) => value.state.user.isValid,
    );
    final hasValidAddress = context.select<AddressBookBloc, bool>((value) {
      final state = value.state;

      return state.selectedAddress.isNotEmpty &&
          state.isPinCodeAddedToAddressBook &&
          state.isSelectedAddressAssociatedWithPin;
    });

    return BlocBuilder<OrderBloc, OrderState>(
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching ||
          previous.selectedPaymentMethod != current.selectedPaymentMethod,
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (isProfileCompleted &&
                    hasValidAddress &&
                    !state.isFetching)
                ? () {
                    final addressState = context.read<AddressBookBloc>().state;
                    final cartState = context.read<CartBloc>().state;

                    context.read<OrderBloc>().add(
                          OrderEvent.submitOrder(
                            cartItem: cartState.cartItem,
                            addressBook: addressState.selectedAddress,
                            date: date,
                            coupon:
                                context.read<CouponBloc>().state.appliedCoupon,
                            deliveryCharge: cartState.deliveryCharges,
                            currentUser:
                                context.read<UserProfileBloc>().state.user,
                          ),
                        );
                  }
                : null,
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              maximumSize: const Size(330, 50),
            ),
            child: Text(
              state.isFetching
                  ? 'loading...'
                  : state.selectedPaymentMethod.maybeWhen(
                      orElse: () => 'Place Order',
                      razorpay: () => 'Proceed to payment',
                    ),
            ),
          ),
        );
      },
    );
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isProfileCompleted = context.select<UserProfileBloc, bool>(
      (value) => value.state.user.isValid,
    );

    if (isProfileCompleted) {
      return const ChangeAddressMessageWidget();
    }

    return const ProfileInCompletedMessageWidget();
  }
}

class ProfileInCompletedMessageWidget extends StatelessWidget {
  const ProfileInCompletedMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      color: AppColors.lightRed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline_outlined,
              color: AppColors.red,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text('Please complete your profile.'),
            InkWell(
              onTap: () {
                context.router.navigate(
                  UserProfileRoute(fromCheckoutPage: true),
                );
              },
              child: const Text(
                'Click here',
                style: TextStyle(
                  color: AppColors.redButton,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeAddressMessageWidget extends StatelessWidget {
  const ChangeAddressMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBookBloc, AddressBookState>(
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching ||
          previous.isSubmitting != current.isSubmitting ||
          previous.currentSelectedPinCode != current.currentSelectedPinCode,
      builder: (context, state) {
        final selectedAddressNotEmpty = context.select<AddressBookBloc, bool>(
          (value) => value.state.selectedAddress.isNotEmpty,
        );
        final hasValidAddress = selectedAddressNotEmpty &&
            state.isPinCodeAddedToAddressBook &&
            state.isSelectedAddressAssociatedWithPin;

        if (hasValidAddress) {
          return const SizedBox.shrink();
        }
        return Material(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: AppColors.lightRed,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.error_outline_outlined,
                  color: AppColors.red,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please add an address with delivery pin - ${context.read<PincodeBloc>().state.pincode}\n',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      if (selectedAddressNotEmpty)
                        Column(
                          children: [
                            const SizedBox(height: 4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Expanded(
                                  child: Text(
                                    'Or else,\nChoose a different pin code to proceed',
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 70,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (BuildContext context) =>
                                            const CommonBottomSheet(
                                          child: PinCodeDialogBox(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                      ),
                                      backgroundColor: AppColors.orange,
                                    ),
                                    child: const Text(
                                      'Update',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
