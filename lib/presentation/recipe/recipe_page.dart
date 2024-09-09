import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/home/read/widgets/recipe_filter_bottom_sheet.dart';
import 'package:planit/presentation/home/read/widgets/recipe_list_card.dart';
import 'package:planit/presentation/home/read/widgets/trending_recipes.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ScrollList<Recipe>(
            onRefresh: () =>
                context.read<RecipeBloc>().add(const RecipeEvent.fetch()),
            header: Column(
              children: [
                const TrendingRecipes(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Recipes',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const CommonBottomSheet(
                              child: RecipeFilterBottomSheet(),
                            ),
                            isScrollControlled: true,
                          ).then((value) {
                            context
                                .read<RecipeBloc>()
                                .add(const RecipeEvent.resetTempSelection());
                          });
                        },
                        child: BlocBuilder<RecipeBloc, RecipeState>(
                          buildWhen: (previous, current) =>
                              previous.filterCount != current.filterCount,
                          builder: (context, state) {
                            return Badge(
                              isLabelVisible: state.filterCount != 0,
                              label: Text(
                                '${state.filterCount}',
                              ),
                              offset: const Offset(1, -4),
                              textStyle: const TextStyle(fontSize: 10),
                              child: Material(
                                color: AppColors.transparent,
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: AppColors.grey4,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(SvgImage.filterIcon),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Filter by',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              fontSize: 12,
                                              color: AppColors.grey4,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            noRecordFoundWidget: const NoData(
              message: 'No Recipe Found!',
            ),
            isLoading: state.isFetching,
            onLoadingMore: () =>
                context.read<RecipeBloc>().add(const RecipeEvent.fetchMore()),
            items: state.filteredRecipes,
            controller: ScrollController(),
            itemBuilder: (context, index, item) {
              return HotRecipeCard(
                recipe: state.filteredRecipes[index],
              );
            },
          ),
        );
      },
    );
  }
}
