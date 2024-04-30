import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/category/widgets/category_app_bar.dart';
import 'package:planit/presentation/category/widgets/category_body.dart';
import 'package:planit/utils/responsive.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: CategoryPageMobile(),
      tablet: CategoryPageMobile(),
      web: CategoryPageWeb(),
    );
  }
}

class CategoryPageMobile extends StatelessWidget {
  const CategoryPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(
        width: MediaQuery.of(context).size.width,
        height: 70,
      ),
      body: const CategoryBody(),
    );
  }
}

class CategoryPageWeb extends StatelessWidget {
  const CategoryPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(
        width: MediaQuery.of(context).size.width,
        height: 70,
      ),
      body: const CategoryBody(),
    );
  }
}
