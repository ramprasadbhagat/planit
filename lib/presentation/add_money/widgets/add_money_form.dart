import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/add_money/add_money_bloc.dart';
import 'package:planit/application/add_money/ui_state/payment_method.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/add_money/widgets/add_money_success_dialog.dart';
import 'package:planit/presentation/add_money/widgets/payment_method_tile.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddMoneyForm extends StatelessWidget {
  const AddMoneyForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I would like to move Rs.',
              style: textTheme.labelSmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter amount',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  context
                      .read<AddMoneyBloc>()
                      .add(AddMoneyEvent.changeAmount(value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Select payment method',
                style: textTheme.labelSmall,
              ),
            ),
            BlocConsumer<AddMoneyBloc, AddMoneyState>(
              listener: (context, state) {
                state.apiFailureOrSuccessOption.fold(() => null, (a) {
                  a.fold(
                    (l) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l.failureMessage)),
                      );
                    },
                    (r) {
                      context
                          .read<WalletBloc>()
                          .add(const WalletEvent.fetchBalance());
                      context
                          .read<WalletBloc>()
                          .add(const WalletEvent.fetchTransactionHistory());

                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => const AddMoneySuccessDialog(),
                      );
                    },
                  );
                });
              },
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state.isLoading,
                  child: Column(
                    children: [
                      // PaymentMethodTile<PaymentMethod>(
                      //   value: const PaymentMethod.card(),
                      //   selectedValue: state.selectedPaymentMethod,
                      //   label: 'Debit / Credit card',
                      //   onChanged: (p0) {
                      //     if (p0 == null) return;
                      //     context
                      //         .read<AddMoneyBloc>()
                      //         .add(AddMoneyEvent.changePaymentMethod(p0));
                      //   },
                      // ),
                      PaymentMethodTile<PaymentMethod>(
                        value: const PaymentMethod.razorpay(),
                        selectedValue: state.selectedPaymentMethod,
                        label: 'Razorpay',
                        onChanged: (p0) {
                          if (p0 == null) return;
                          context
                              .read<AddMoneyBloc>()
                              .add(AddMoneyEvent.changePaymentMethod(p0));
                        },
                      ),
                      if (state.selectedPaymentMethod ==
                          const PaymentMethod.card())
                        const CardInformationForm(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardInformationForm extends StatelessWidget {
  const CardInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          height: 35,
          endIndent: 0,
          indent: 0,
          color: AppColors.extraLightGrey2,
        ),
        Text(
          'Debit/Credit card information',
          style: textTheme.labelSmall,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Name on the card',
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Card number',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(PngImage.creditCard),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expiration date',
                    style: textTheme.titleSmall?.copyWith(
                      color: AppColors.grey1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField(
                          items: const [],
                          onChanged: (v) {},
                          decoration: const InputDecoration(
                            labelText: 'Month',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButtonFormField(
                          items: const [],
                          onChanged: (v) {},
                          decoration: const InputDecoration(
                            labelText: 'Year',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CVC',
                    style: textTheme.titleSmall?.copyWith(
                      color: AppColors.grey1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'CVC',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
