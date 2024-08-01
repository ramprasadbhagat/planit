import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class RatingStar extends StatelessWidget {
  final double value;
  final bool showAllStar;
  const RatingStar({super.key, required this.value, this.showAllStar = false});

  Widget buildStars(double rating) {
    const size = 18.0;
    final stars = <Widget>[];
    final fullStars = rating.floor();
    final hasHalfStar = (rating - fullStars) > 0;

    for (var i = 0; i < fullStars; i++) {
      stars.add(
        const Icon(
          Icons.star,
          size: size,
        ),
      );
    }
    if (hasHalfStar) {
      stars.add(
        const Icon(
          Icons.star_half,
          size: size,
        ),
      );
    }

    if (showAllStar) {
      while (stars.length < 5) {
        stars.add(
          const Icon(
            Icons.star_border,
            size: size,
            color: AppColors.iconGrey,
          ),
        );
      }
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildStars(value),
        Text(
          value.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.grey1,
              ),
        ),
      ],
    );
  }
}
