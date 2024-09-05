import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color? color;
  final Color? borderColor;
  final double size;
  final MainAxisAlignment mainAxisAlignment;
  final bool allowHalfRating;
  final IconData? filledIcon;
  final IconData? halfFilledIcon;
  final IconData? emptyIcon;

  const StarRating({
    this.starCount = 5,
    this.rating = .0,
    this.color,
    this.borderColor,
    this.size = 15,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.allowHalfRating = false,
    super.key,
    this.filledIcon,
    this.halfFilledIcon,
    this.emptyIcon,
  });

  Widget buildStar(BuildContext context, int index) {
    IconData iconData;
    if (index >= rating) {
      iconData = emptyIcon ?? Icons.star_border;
    } else if (index > rating - 1 && index < rating) {
      iconData = halfFilledIcon ?? Icons.star_half;
    } else {
      iconData = filledIcon ?? Icons.star;
    }

    final icon = Icon(
      iconData,
      color: index >= rating
          ? borderColor ?? AppColors.grey
          : color ?? AppColors.primary,
      size: size,
    );

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            ...List.generate(
              starCount,
              (index) => buildStar(context, index),
            ),
            Text(
              rating.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.grey4),
            ),
          ],
        ),
      ),
    );
  }
}
