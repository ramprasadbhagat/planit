import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/category/widgets/category_app_bar.dart';
import 'package:planit/presentation/category/widgets/category_body.dart';
import 'package:planit/presentation/home/shop/widgets/cart_banner.dart';
import 'package:planit/utils/responsive.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  final bool openFromOccassion;
  const CategoryPage({super.key, this.openFromOccassion = false});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: CategoryPageMobile(
        openFromOccassion: openFromOccassion,
      ),
      tablet: CategoryPageMobile(
        openFromOccassion: openFromOccassion,
      ),
      web: const CategoryPageWeb(),
    );
  }
}

class CategoryPageMobile extends StatelessWidget {
  final bool openFromOccassion;
  const CategoryPageMobile({
    super.key,
    required this.openFromOccassion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(
        width: MediaQuery.of(context).size.width,
        height: 70,
      ),
      body: Column(
        children: [
          Expanded(
            child: CategoryBody(
              openFromOccassion: openFromOccassion,
            ),
          ),
          const CartBanner(),
        ],
      ),
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
