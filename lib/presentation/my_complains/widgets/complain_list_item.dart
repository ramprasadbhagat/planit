import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/my_complains/widgets/complain_status_chip.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class ComplainListItem extends StatelessWidget {
  const ComplainListItem({
    super.key,
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
                  const TextSpan(
                    text: 'Complain ID: ',
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
                  style: textTheme.titleSmall,
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
                    '19-03-2024',
                    style: textTheme.titleSmall?.copyWith(
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
                const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Description: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore toder moollo baper nam magna aliqua.',
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
