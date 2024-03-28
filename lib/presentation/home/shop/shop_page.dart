import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/shop/widgets/banner.dart';
import 'package:planit/presentation/home/shop/widgets/best_seller.dart';
import 'package:planit/presentation/home/shop/widgets/highlight.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_category.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_occasion.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: WidgetKeys.shopPage,
      body: ListView(
        children: const [
          ShoppingBanner(),
          HighLight(),
          ShoppingOptionTab(),
          ShopByCategory(),
          ShopByOccasion(),
          BestSeller(),
        ],
      ),
    );
  }
}
