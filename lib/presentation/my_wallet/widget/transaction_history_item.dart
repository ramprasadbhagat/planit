// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/my_wallet/widget/transaction_status_chip.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class TransactionHistoryItem extends StatelessWidget {
  final int index;
  const TransactionHistoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  const TextSpan(
                    text: 'Transaction ID: ',
                    style: TextStyle(
                      color: AppColors.grey4,
                    ),
                    children: [
                      TextSpan(
                        text: '#56234',
                        style: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                TransactionStatusChip(
                  isSuccess: index.isEven,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.calendar2,
                  width: 16,
                  height: 16,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '19-03-2024',
                  style: textTheme.titleSmall?.copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  SvgImage.currencyIcon,
                  width: 16,
                  height: 16,
                  color: AppColors.grey4,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '719.00',
                  style: textTheme.titleSmall?.copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: const BoxDecoration(
                color: AppColors.grey5,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                'Successfully credited from A/C No. 8654123',
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.textBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
