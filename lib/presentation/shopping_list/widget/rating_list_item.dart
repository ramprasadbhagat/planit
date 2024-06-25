import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key, required this.value});
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        value,
        (index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Icon(
              Icons.star,
              size: 15,
              color: AppColors.lightOrange,
            ),
          );
        },
      ),
    );
  }
}
