import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/presentation/recipe_details/widgets/image_and_title.dart';
import 'package:planit/presentation/recipe_details/widgets/meal_info.dart';
import 'package:planit/presentation/recipe_details/widgets/nutritional_facts_dialog.dart';
import 'package:planit/presentation/recipe_details/widgets/recipe_ingredients.dart';
import 'package:planit/presentation/recipe_details/widgets/review.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:readmore/readmore.dart';

@RoutePage()
class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Recipes'),
          centerTitle: false,
          leadingWidth: 35,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            ImageAndTitleSection(),
            MealInfo(),
            NutritionalInfoButton(),
            RecipeIngredients(),
            RecipeEquipment(),
            RecipeSteps(),
            Reviews(),
          ],
        ),
      ),
    );
  }
}

class RecipeSteps extends StatelessWidget {
  const RecipeSteps({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImage.hotMealIcon,
                width: 23,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Recipe Steps',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 18,
            ),
            child: Column(
              children: List.generate(
                6,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgImage.foodPrepareIcon,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Step ${index + 1}',
                            style: textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Heat olive oil in a large, flat vegetables are fully softened and spottily charred, about another 2 minutes. Add garlic, chilli powder and cumin and cook, stirring, about 30 seconds. Add tomatoes and stir to combine.',
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.grey4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeEquipment extends StatelessWidget {
  const RecipeEquipment({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImage.equipmentIcon,
                width: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Recipe Equipment',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 18,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      SvgImage.foodPrepareIcon,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Equipment\'s Name',
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Wrap(
                    children: List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.39,
                          child: Text(
                            '${index + 1}. Chipping board',
                            style: textTheme.titleSmall?.copyWith(
                              color: AppColors.grey4,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NutritionalInfoButton extends StatelessWidget {
  const NutritionalInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(SvgImage.leafIcon),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Nutritional Information',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const Spacer(),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(70, 24),
                textStyle: const TextStyle(
                  fontSize: 12,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const NutritionalFactsDialog(),
                );
              },
              child: const Text('View'),
            ),
          ],
        ),
      ),
    );
  }
}
