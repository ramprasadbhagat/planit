import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_category_section.dart';
import 'package:planit/presentation/home/shop/widgets/shop_by_occasion_section.dart';
import 'package:planit/presentation/home/shop/widgets/shoping_option_tab/quick_pick_tab_view.dart';
import 'package:planit/presentation/theme/colors.dart';

class ShoppingOptionTab extends StatefulWidget {
  const ShoppingOptionTab({super.key});

  @override
  State<ShoppingOptionTab> createState() => _ShoppingOptionTabState();
}

class _ShoppingOptionTabState extends State<ShoppingOptionTab>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTab = 0;
  static List<String> tabs = [
    'Your favorite picks',
    'Shop by category',
    'Shop by occasion',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.zero,
              labelStyle: textTheme.bodySmall!.copyWith(
                fontSize: 11,
              ),
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.black,
              indicator: const BoxDecoration(),
              controller: _tabController,
              onTap: (value) => setState(() => _selectedTab = value),
              tabs: tabs.mapIndexed(
                (index, title) {
                  final isSelected = _tabController.index == index;
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 7,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.black : AppColors.white,
                      border: Border.all(
                        color: AppColors.black,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textScaler: const TextScaler.linear(0.9),
                      style: textTheme.bodyMedium?.copyWith(
                        color: isSelected ? AppColors.white : AppColors.black,
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<QuickPicksBloc, QuickPicksState>(
              builder: (context, state) {
                return SizedBox(
                  height: _selectedTab == 0
                      ? state.quickPickProductsHeight
                      : _selectedTab == 1
                          ? 250
                          : 150,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      QuickPickTabView(),
                      ShopByCategory(),
                      ShopByOccasion(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
