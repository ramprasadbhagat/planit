import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class DiscountWidget extends StatelessWidget {
  final double discountPercentage;
  const DiscountWidget({super.key, required this.discountPercentage});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: -20,
      child: Transform.rotate(
        angle: -0.785398,
        child: Container(
          width: 90,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: Container(
            color: AppColors.green,
            padding: const EdgeInsets.all(2),
            child: Center(
              child: Text(
                '$discountPercentage% OFF',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontSize: 9,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
