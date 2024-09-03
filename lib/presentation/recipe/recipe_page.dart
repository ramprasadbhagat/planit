import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/read/widgets/hot_recipes.dart';
import 'package:planit/presentation/home/read/widgets/trending_recipes.dart';

@RoutePage()
class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        clipBehavior: Clip.none,
        slivers: [
          TrendingRecipes(),
          HotRecipes(),
        ],
      ),
    );
  }
}
