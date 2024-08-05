import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/recipe/recipe_details/recipe_details_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/recipe_details/widgets/image_and_title.dart';
import 'package:planit/presentation/recipe_details/widgets/meal_info.dart';
import 'package:planit/presentation/recipe_details/widgets/nutritional_facts_dialog.dart';
import 'package:planit/presentation/recipe_details/widgets/recipe_ingredients.dart';
import 'package:planit/presentation/recipe_details/widgets/review.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailsPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecipeDetailsBloc, RecipeDetailsState>(
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(() {}, (a) {
          a.fold(
            (l) {
              final snackBar = SnackBar(
                content: Text(l.failureMessage),
                backgroundColor: AppColors.red,
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (r) {},
          );
        });
      },
      bloc: context.read<RecipeDetailsBloc>()
        ..add(RecipeDetailsEvent.fetch(recipe)),
      builder: (context, state) {
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
              children: [
                ImageAndTitleSection(
                  recipe: state.recipeDetails.recipe,
                ),
                MealInfo(
                  recipe: state.recipeDetails.recipe,
                ),
                NutritionalInfoButton(
                  imageUrl:
                      state.recipeDetails.recipe.nutritionalTable.getValue(),
                ),
                RecipeIngredients(
                  recipe: state.recipeDetails.recipe,
                ),
                RecipeEquipment(
                  recipe: state.recipeDetails.recipe,
                ),
                RecipeSteps(
                  recipe: state.recipeDetails.recipe,
                ),
                const Reviews(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RecipeSteps extends StatelessWidget {
  final Recipe recipe;
  const RecipeSteps({super.key, required this.recipe});

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
              children: recipe.step
                  .map(
                    (e) => Padding(
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
                                'Step ${e.stepNumber}',
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
                            e.stepDescription.getValue(),
                            style: textTheme.bodySmall?.copyWith(
                              color: AppColors.grey4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeEquipment extends StatelessWidget {
  final Recipe recipe;
  const RecipeEquipment({super.key, required this.recipe});

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
                    children: recipe.equipment
                        .mapIndexed(
                          (i, e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.39,
                              child: Text(
                                '${i + 1}. ${e.euipmentName.getValue()}',
                                style: textTheme.titleSmall?.copyWith(
                                  color: AppColors.grey4,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
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
  final String imageUrl;
  const NutritionalInfoButton({
    super.key,
    required this.imageUrl,
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
                  builder: (context) => NutritionalFactsDialog(
                    imageUrl: imageUrl,
                  ),
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
