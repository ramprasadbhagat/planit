import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/presentation/checkout/widgets/month_picker_field.dart';
import 'package:planit/presentation/checkout/widgets/payment_field.dart';
import 'package:planit/presentation/checkout/widgets/year_picker_field.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

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
            Row(
              children: [
                Radio(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    // active
                    if (states.contains(MaterialState.selected)) {
                      return Colors.black;
                    }
                    // inactive
                    return Colors.grey;
                  }),
                  value: 0,
                  groupValue: 0,
                  onChanged: (e) {},
                ),
                Text(
                  'Debit / Credit card',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    // active
                    if (states.contains(MaterialState.selected)) {
                      return Colors.black;
                    }
                    // inactive
                    return Colors.grey;
                  }),
                  value: 0,
                  groupValue: 1,
                  onChanged: (e) {},
                ),
                Text(
                  'Razorpay',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    // active
                    if (states.contains(MaterialState.selected)) {
                      return Colors.black;
                    }
                    // inactive
                    return Colors.grey;
                  }),
                  value: 0,
                  groupValue: 2,
                  onChanged: (e) {},
                ),
                Text(
                  'Cash on delivery',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
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
        ),
      ),
    );
  }
}
