import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/search_recipes/search_recipes_bloc.dart';
import 'package:planit/domain/core/debouncer.dart';
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
  final _bouncer = Debouncer(milliseconds: 700);
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide.none,
    );
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(
                        color: AppColors.grey2,
                      ),
                    ),
                    child: TextFormField(
                      autofocus: true,
                      onChanged: (e) {
                        _bouncer.run(() {
                          if (e.trim().isNotEmpty) {
                            context.read<SearchRecipesBloc>().add(
                                  SearchRecipesEvent.fetchProduct(
                                    searchKey: e,
                                  ),
                                );
                          } else {
                            context.read<SearchRecipesBloc>().add(
                                  const SearchRecipesEvent.initialized(),
                                );
                          }
                        });
                      },
                      controller: searchController,
                      decoration: const InputDecoration(
                        focusedBorder: borderDecoration,
                        enabledBorder: borderDecoration,
                        errorBorder: borderDecoration,
                        disabledBorder: borderDecoration,
                        border: borderDecoration,
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: 24,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
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
                            message: searchController.text.isEmpty
                                ? '\nSearch for expertly crafted recipes and techniques'
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
                                // controller: scrollController,
                                itemCount: state.recipes.length,
                                shrinkWrap: true,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
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

  @override
  void dispose() {
    searchController.clear();
    super.dispose();
  }
}
