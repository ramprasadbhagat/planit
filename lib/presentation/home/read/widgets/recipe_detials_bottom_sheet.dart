import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/home/entities/trending_recipe.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class RecipeDetailsBottomSheet extends StatelessWidget {
  final TrendingRecipe trendingRecipe;
  const RecipeDetailsBottomSheet({super.key, required this.trendingRecipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecipeDetail(
          trendingRecipe: trendingRecipe,
        ),
        const HowToCook(),
      ],
    );
  }
}

class HowToCook extends StatelessWidget {
  const HowToCook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('How to cook'),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do so eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utlim aliquip ex ea commodo.',
        ),
      ],
    );
  }
}

class RecipeDetail extends StatelessWidget {
  final TrendingRecipe trendingRecipe;
  const RecipeDetail({super.key, required this.trendingRecipe});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: Image.asset(
            PngImage.placeholder,
          ),
        ),
        Positioned(
          bottom: 50,
          left: MediaQuery.sizeOf(context).width * 0.01,
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              width: MediaQuery.sizeOf(context).width * 0.66,
              height: MediaQuery.sizeOf(context).height * 0.13,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trendingRecipe.title,
                    style: textTheme.labelSmall?.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    trendingRecipe.subTitle,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                      color: AppColors.grey1,
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 0.8,
                    endIndent: 0,
                    indent: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            trendingRecipe.rating.toString(),
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 15,
                            color: AppColors.slateBlue,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '${trendingRecipe.preparationTime.toString()} min',
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgImage.chefHat,
                            height: 15,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            trendingRecipe.level,
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
