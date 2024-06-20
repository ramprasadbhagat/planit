import 'package:flutter/material.dart';
import 'package:planit/presentation/add_money/widgets/payment_method_tile.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

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
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Select payment method',
                style: textTheme.labelSmall,
              ),
            ),
            const PaymentMethodTile<bool>(
              value: true,
              selectedValue: true,
              label: 'Debit / Credit card',
            ),
            const PaymentMethodTile<bool>(
              value: false,
              selectedValue: true,
              label: 'Net Banking',
            ),
            const PaymentMethodTile<bool>(
              value: false,
              selectedValue: true,
              label: 'UPI',
            ),
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
        ),
      ),
    );
  }
}
