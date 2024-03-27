import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/shop/widgets/location_pin.dart';
import 'package:planit/presentation/home/shop/widgets/search_bar.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:collection/collection.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});
  static List<String> tabs = ['shop', 'Read', 'Plan'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const LocationPin(),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: AutoTabsRouter.tabBar(
                routes: const [ShopRoute(), ReadRoute(), PlanRoute()],
                builder: (context, child, tabController) => Column(
                  children: [
                    TabBar(
                      controller: tabController,
                      indicator: const BoxDecoration(),
                      labelStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      labelPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      tabs: ['shop', 'read', 'plan']
                          .map(
                            (title) => Tab(
                              child: Material(
                                elevation: 4.0,
                                child: Container(
                                  height: 30.0,
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Text(title),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
