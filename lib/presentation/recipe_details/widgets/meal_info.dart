import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 17,
                    color: AppColors.slateBlue,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text.rich(
                    const TextSpan(
                      text: 'Time Required :',
                      children: [
                        TextSpan(
                          text: '25 mins',
                          style: TextStyle(
                            color: AppColors.grey6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textBlack,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(SvgImage.chefHat),
                  const SizedBox(
                    width: 3,
                  ),
                  Text.rich(
                    const TextSpan(
                      text: 'Difficulty Level :',
                      children: [
                        TextSpan(
                          text: 'Easy',
                          style: TextStyle(
                            color: AppColors.grey6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textBlack,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            indent: 0,
            endIndent: 60,
            height: 15,
            color: AppColors.grey2.withOpacity(0.43),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(SvgImage.mealIcon),
                  const SizedBox(
                    width: 3,
                  ),
                  Text.rich(
                    const TextSpan(
                      text: 'Serving Size :',
                      children: [
                        TextSpan(
                          text: '2 eggs, 200 grams',
                          style: TextStyle(
                            color: AppColors.grey6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textBlack,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  // SvgPicture.asset(SvgImage.chefHat),
                  const Text('#'),
                  const SizedBox(
                    width: 3,
                  ),
                  Text.rich(
                    const TextSpan(
                      text: 'Number of Serving :',
                      children: [
                        TextSpan(
                          text: ' 2',
                          style: TextStyle(
                            color: AppColors.grey6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textBlack,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
