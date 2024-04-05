import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class CartBanner extends StatelessWidget {
  const CartBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 50,
          decoration: const BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              Text(
                '4 items | \$ 432',
                style: textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                decoration: const BoxDecoration(
                  color: AppColors.lightGray2,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Text(
                  '\$ 16 saved',
                  style: textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ),
              const Spacer(),
              Text(
                'View Cart',
                style: textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
