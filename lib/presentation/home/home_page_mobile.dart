import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.gr.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AutoTabsRouter.tabBar(
            routes: const [ShopRoute(), ReadRoute(), PlanRoute()],
            builder: (context, child, tabController) => Column(
              children: [
                TabBar(
                  controller: tabController,
                  tabs: ['shop', 'read', 'plan']
                      .map(
                        (e) => Tab(
                          key: Key(e.toLowerCase()),
                          text: e,
                        ),
                      )
                      .toList(),
                ),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
