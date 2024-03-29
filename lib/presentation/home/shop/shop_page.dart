import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/utils/widget_keys.dart';

@RoutePage()
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: WidgetKeys.shopPage,
      body: Center(
        child: Text('shop'),
      ),
    );
  }
}
