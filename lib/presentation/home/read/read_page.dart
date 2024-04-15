import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/read/widgets/hot_recipes.dart';
import 'package:planit/presentation/home/read/widgets/trending_recipes.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class ReadPage extends StatelessWidget {
  const ReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: WidgetKeys.readPage,
      body: Column(
        children: [
          TrendingRecipes(),
          HotRecipes(),
        ],
      ),
    );
  }
}
