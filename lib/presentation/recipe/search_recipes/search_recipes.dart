import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_recipes/search_recipes_bloc.dart';
import 'package:planit/presentation/core/common_search_bar.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/scroll_list.dart';
import 'package:planit/presentation/home/read/widgets/recipe_list_card.dart';
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
      body: Padding(
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
            Expanded(
              child: BlocBuilder<SearchRecipesBloc, SearchRecipesState>(
                builder: (context, state) {
                  return ScrollList(
                    onRefresh: () => context.read<SearchRecipesBloc>().add(
                          SearchRecipesEvent.fetchProduct(
                            searchKey: state.searchText,
                            forceRefresh: true,
                          ),
                        ),
                    header: Text(
                      '${state.totalItemCount} recipes found',
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack,
                      ),
                    ),
                    isLoading: state.isFetching,
                    itemBuilder: (context, index, item) {
                      return HotRecipeCard(
                        recipe: item,
                      );
                    },
                    onLoadingMore: () => context
                        .read<SearchRecipesBloc>()
                        .add(const SearchRecipesEvent.fetchMore()),
                    items: state.recipes,
                    noRecordFoundWidget: SizedBox(
                      height: 400,
                      child: NoData(
                        message: state.searchText.isEmpty
                            ? 'Search for expertly crafted recipes and techniques'
                            : 'No Recipes found',
                        errorSvgImage: SvgImage.recipeEmptyIcon,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
