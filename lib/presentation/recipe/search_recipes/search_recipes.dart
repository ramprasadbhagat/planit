import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_recipes/search_recipes_bloc.dart';
import 'package:planit/presentation/core/common_search_bar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/home/read/widgets/hot_recipes.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_items.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

@RoutePage()
class SearchRecipesPage extends StatefulWidget {
  const SearchRecipesPage({super.key});

  @override
  State<SearchRecipesPage> createState() => _SearchRecipesPageState();
}

class _SearchRecipesPageState extends State<SearchRecipesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'Recipes',
          style: textTheme.labelLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                children: [
                  CommonSearchBar(
                    hintText: 'Search recipes...',
                    onSearchChanged: (e) => context
                        .read<SearchRecipesBloc>()
                        .add(SearchRecipesEvent.fetchProduct(searchKey: e)),
                    onSearchSubmitted: (e) => context
                        .read<SearchRecipesBloc>()
                        .add(SearchRecipesEvent.fetchProduct(searchKey: e)),
                    onClear: () => context.read<SearchRecipesBloc>().add(
                          const SearchRecipesEvent.initialized(),
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<SearchRecipesBloc, SearchRecipesState>(
                    builder: (context, state) {
                      if (state.isFetching) {
                        return const ShimmerItem();
                      } else if (state.recipes.isEmpty) {
                        return Expanded(
                          child: NoData(
                            message: state.searchString.isEmpty
                                ? 'Search for expertly crafted recipes and techniques'
                                : 'No Recipes found',
                            errorSvgImage: SvgImage.recipeEmptyIcon,
                          ),
                        );
                      }
                      return Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.recipes.length} recipes found',
                              style: textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textBlack,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: state.recipes.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    child: HotRecipeCard(
                                      recipe: state.recipes.elementAt(index),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const CartBanner(),
        ],
      ),
    );
  }
}
