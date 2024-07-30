import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';
import 'package:planit/presentation/my_complains/widgets/complain_status_chip.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class ComplainListItem extends StatelessWidget {
  final Complain complain;
  const ComplainListItem({
    super.key,
    required this.complain,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Complain ID: ',
                    style: const TextStyle(
                      color: AppColors.grey4,
                    ),
                    children: [
                      TextSpan(
                        text: complain.complainId.getValue(),
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  style: textTheme.bodySmall,
                ),
                const ComplainStatusChip(isSuccess: true),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
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
                    DateFormat('dd-MM-yyyy').format(complain.createdAt),
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.textBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: const BoxDecoration(
                color: AppColors.grey5,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Description: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: complain.complainContent,
                    ),
                  ],
                ),
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
