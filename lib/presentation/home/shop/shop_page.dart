import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/shop/widgets/banner.dart';
import 'package:planit/presentation/home/shop/widgets/best_seller_section.dart';
import 'package:planit/presentation/home/shop/widgets/highlight_section.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_category_section.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_occasion_section.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WidgetKeys.shopPage,
      body: ListView(
        children: const [
          ShoppingBanner(),
          HighLightSection(),
          ShoppingOptionTab(),
          ShopByCategory(),
          ShopByOccasion(),
          BestSellerSection(),
        ],
      ),
    );
  }
}
