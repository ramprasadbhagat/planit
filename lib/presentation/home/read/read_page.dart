import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/presentation/router/router.gr.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/widget_keys.dart';

@RoutePage()
class ReadPage extends StatelessWidget {
  const ReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WidgetKeys.readPage,
      body: AutoTabsRouter.tabBar(
        routes: const [
          RecipesRoute(),
          BlogsRoute(),
        ],
        builder: (context, child, tabController) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                child: TabBar(
                  indicator: const BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: tabController,
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.black,
                  tabs: const [
                    Tab(
                      text: 'Recipes',
                      height: 35,
                    ),
                    Tab(
                      text: 'Blogs',
                      height: 35,
                    ),
                  ],
                ),
              ),
              Expanded(child: child),
            ],
          );
        },
      ),
    );
  }
}
