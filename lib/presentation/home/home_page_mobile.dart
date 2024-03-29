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
      body: Column(
        children: [
          Expanded(
            child: AutoTabsRouter.tabBar(
              routes: const [ShopRoute(), ReadRoute(), PlanRoute()],
              builder: (context, child, tabController) => Column(
                children: [
                  Column(
                    children: [
                      TabBar(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        controller: tabController,
                        indicator: const BoxDecoration(),
                        tabs: tabs.mapIndexed(
                          (index, title) {
                            final isSelected = tabController.index == index;
                            return Card(
                              child: Tab(
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.primary
                                        : AppColors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    title,
                                    style: textTheme.labelMedium!.copyWith(
                                      color: isSelected
                                          ? AppColors.white
                                          : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      const HomeSearchBar(),
                      const SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                  Expanded(child: child),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
