import 'package:flutter/material.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/order/widgets/review_product.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              PngImage.orderItem1,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Johnson Almonds',
                    style: textTheme.labelSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Johnson Fresh almonds 1 kg pack',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                        color: AppColors.grey2,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        '4',
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Price : ',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                      const Text(
                        '₹ 1099.00 ',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '₹ 699.00 Rs/-',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '3 X ₹ 699.00  ',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) =>
                                const CommonBottomSheet(
                              child: ReviewDialogBox(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppColors.white,
                          minimumSize: const Size(50, 30),
                          side: const BorderSide(color: AppColors.grey2),
                        ),
                        child: const Text(
                          'Rate Now',
                          style: TextStyle(color: AppColors.grey2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 2,
          color: AppColors.lightGray2,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              PngImage.orderItem2,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Johnson Almonds',
                    style: textTheme.labelSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Johnson Fresh almonds 1 kg pack',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                        color: AppColors.grey2,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        '4',
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Price : ',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                      const Text(
                        '₹ 385.00 ',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '2 X ₹ 385.00  ',
                        style: textTheme.labelSmall?.copyWith(fontSize: 14),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) =>
                                const CommonBottomSheet(
                              child: ReviewDialogBox(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppColors.white,
                          minimumSize: const Size(50, 30),
                          side: const BorderSide(color: AppColors.grey2),
                        ),
                        child: const Text(
                          'Rate Now',
                          style: TextStyle(color: AppColors.grey2),
                        ),
                      ),
                    ],
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
