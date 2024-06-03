import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/home/entities/trending_recipe.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/home/read/widgets/recipe_detials_bottom_sheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class TrendingRecipes extends StatelessWidget {
  const TrendingRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SectionTitle(title: 'Trending Recipes'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.32,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: trendingRecipeList.length,
              itemBuilder: (BuildContext context, int index) =>
                  TrendingRecipeCard(
                trendingRecipe: trendingRecipeList.elementAt(index),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrendingRecipeCard extends StatelessWidget {
  final TrendingRecipe trendingRecipe;
  const TrendingRecipeCard({
    super.key,
    required this.trendingRecipe,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) => RecipeDetailsBottomSheet(
          trendingRecipe: trendingRecipe,
        ),
      ),
      child: Stack(
        children: [
          Image.asset(
            PngImage.placeholder,
            height: MediaQuery.sizeOf(context).height * 0.25,
            width: MediaQuery.sizeOf(context).width * 0.7,
          ),
          Positioned(
            bottom: 0.1,
            left: MediaQuery.sizeOf(context).width * 0.01,
            child: Card(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
      ),
    );
  }
}

final trendingRecipeList = <TrendingRecipe>[
  TrendingRecipe(
    image: 'trending_recipe.png',
    title: 'Delicious Healthy Kebab',
    subTitle: 'All spices available here',
    rating: 4.3,
    preparationTime: 35,
    level: 'Easy',
  ),
  TrendingRecipe(
    image: 'trending_recipe.png',
    title: 'Delicious Healthy Kebab',
    subTitle: 'All spices available here',
    rating: 4.3,
    preparationTime: 35,
    level: 'Easy',
  ),
];
