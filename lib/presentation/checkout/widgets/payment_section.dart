import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_money/ui_state/payment_method.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/presentation/add_money/widgets/payment_method_tile.dart';
import 'package:planit/presentation/checkout/widgets/month_picker_field.dart';
import 'package:planit/presentation/checkout/widgets/payment_field.dart';
import 'package:planit/presentation/checkout/widgets/year_picker_field.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({
    super.key,
  });

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  int radioValue = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select payment method',
              style: textTheme.titleMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                return Column(
                  children: [
                    BlocBuilder<WalletBloc, WalletState>(
                      builder: (context, walletState) {
                        final appliedCoupon = context.select(
                          (CouponBloc value) => value.state.appliedCoupon,
                        );
                        final cartItem = context.select(
                          (CartBloc value) => value.state.cartItem,
                        );
                        final deliveryCharges = context.select(
                          (CartBloc value) => value.state.deliveryCharges,
                        );

                        final orderTotal = appliedCoupon.priceAfterCoupon(
                              cartItem.totalPrice.getValue(),
                            ) +
                            deliveryCharges;
                        final insufficientBalance =
                            orderTotal > walletState.balance;
                        return PaymentMethodTile<PaymentMethod>(
                          trailing: Text(
                            'Balance: ${walletState.balance.toPrice()} ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          value: const PaymentMethod.wallet(),
                          selectedValue: state.selectedPaymentMethod,
                          label: 'Wallet',
                          subTitle: insufficientBalance
                              ? Text(
                                  'Insufficient Balance',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: AppColors.red,
                                      ),
                                )
                              : null,
                          onChanged: insufficientBalance
                              ? null
                              : (p0) {
                                  if (p0 == null || insufficientBalance) return;
                                  context
                                      .read<OrderBloc>()
                                      .add(OrderEvent.changePaymentMethod(p0));
                                },
                        );
                      },
                    ),
                    PaymentMethodTile<PaymentMethod>(
                      value: const PaymentMethod.razorpay(),
                      selectedValue: state.selectedPaymentMethod,
                      label: 'Razorpay',
                      onChanged: (p0) {
                        if (p0 == null) return;
                        context
                            .read<OrderBloc>()
                            .add(OrderEvent.changePaymentMethod(p0));
                      },
                    ),
                    PaymentMethodTile<PaymentMethod>(
                      value: const PaymentMethod.cod(),
                      selectedValue: state.selectedPaymentMethod,
                      label: 'Cash on delivery',
                      onChanged: (p0) {
                        if (p0 == null) return;
                        context
                            .read<OrderBloc>()
                            .add(OrderEvent.changePaymentMethod(p0));
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (state.selectedPaymentMethod ==
                        const PaymentMethod.card())
                      CardInputForm(textTheme: textTheme),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardInputForm extends StatelessWidget {
  const CardInputForm({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 1,
          width: double.infinity,
          color: AppColors.lightGray,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Credit card information',
          style: textTheme.titleMedium?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        PaymentTextField(
          controller: TextEditingController(),
          hintText: 'Name on the card',
          keyboardType: TextInputType.name,
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Expanded(
              child: PaymentTextField(
                controller: TextEditingController(),
                hintText: 'Card number',
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              PngImage.creditCard,
              width: 100,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expiration date',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGray,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MonthPickerField(),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            const YearPickerField(),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CVC',
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGray,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PaymentTextField(
                    controller: TextEditingController(),
                    hintText: 'CVC',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
