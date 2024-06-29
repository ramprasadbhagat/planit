import 'package:flutter/material.dart';
import 'package:planit/presentation/checkout/widgets/month_picker_field.dart';
import 'package:planit/presentation/checkout/widgets/payment_field.dart';
import 'package:planit/presentation/checkout/widgets/year_picker_field.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class PaymentSection extends StatefulWidget {
  final Function(String?) onPaymentChanged;
  const PaymentSection({super.key, required this.onPaymentChanged});

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
                  groupValue: radioValue,
                  onChanged: (e) {
                    setState(() {
                      radioValue = e!;
                      widget.onPaymentChanged('Debit / Credit card');
                    });
                  },
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
                  value: 1,
                  groupValue: radioValue,
                  onChanged: (e) {
                    setState(() {
                      radioValue = e!;
                      widget.onPaymentChanged('Razorpay');
                    });
                  },
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
                  value: 2,
                  groupValue: radioValue,
                  onChanged: (e) {
                    setState(() {
                      radioValue = e!;
                      widget.onPaymentChanged('Cash on delivery');
                    });
                  },
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
            radioValue == 0
                ? Column(
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
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
