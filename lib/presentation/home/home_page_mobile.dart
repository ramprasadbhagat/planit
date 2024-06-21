import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/home/shop/widgets/location_pin.dart';
import 'package:planit/presentation/home/shop/widgets/search_bar.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:collection/collection.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});
  static List<String> tabs = ['Shop', 'Read', 'Plan'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const LocationPin(),
        automaticallyImplyLeading: false,
        elevation: 0,
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
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        controller: tabController,
                        labelStyle: textTheme.labelMedium,
                        indicator: const BoxDecoration(),
                        labelColor: AppColors.white,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                        tabs: tabs.mapIndexed(
                          (index, title) {
                            final isSelected = tabController.index == index;
                            return Container(
                              width: MediaQuery.sizeOf(context).width * 0.31,
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.black
                                    : AppColors.white,
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.black
                                      : AppColors.lightGray2,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Text(
                                title,
                                style: textTheme.labelSmall?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? AppColors.white
                                      : AppColors.black,
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
