import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/quick_pick.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ShoppingOptionTab extends StatefulWidget {
  const ShoppingOptionTab({super.key});

  @override
  State<ShoppingOptionTab> createState() => _ShoppingOptionTabState();
}

class _ShoppingOptionTabState extends State<ShoppingOptionTab>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTab = 0;
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
              labelPadding: const EdgeInsets.all(1),
              labelStyle: textTheme.bodySmall!.copyWith(fontSize: 12),
              labelColor: AppColors.white,
              indicator: const BoxDecoration(),
              controller: _tabController,
              onTap: (value) => setState(() => _selectedTab = value),
              tabs: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 3.5,
                  ),
                  decoration: BoxDecoration(
                    color: _tabController.index == 0
                        ? AppColors.black
                        : AppColors.white,
                    border: Border.all(
                      color: AppColors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Text(
                    'Your favorite picks',
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                  decoration: BoxDecoration(
                    color: _tabController.index == 1
                        ? AppColors.black
                        : AppColors.white,
                    border: Border.all(
                      color: AppColors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Text('Shop by category'),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                  decoration: BoxDecoration(
                    color: _tabController.index == 2
                        ? AppColors.black
                        : AppColors.white,
                    border: Border.all(
                      color: AppColors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Text('Shop by occasion'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  QuickPickTabView(),
                  Center(child: Text('Tab 2 Content')),
                  Center(child: Text('Tab 3 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickPickTabView extends StatelessWidget {
  const QuickPickTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: 'Your quick picks'),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          runSpacing: 8,
          spacing: 2,
          children: quickPickList
              .map(
                (e) => QuickPickCard(
                  item: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class QuickPickCard extends StatelessWidget {
  final QuickPick item;
  const QuickPickCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.28,
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                  width: 60,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      foregroundColor: AppColors.grey3,
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.favorite_outline,
                          size: 12,
                          color: AppColors.grey3,
                        ),
                        Text(
                          'Add to list',
                          style: textTheme.bodySmall?.copyWith(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(PngImage.generic(item.image)),
            Row(
              children: [
                Text(
                  item.title,
                  style: textTheme.bodySmall,
                ),
                Text(
                  '1',
                  style: textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '\$ 430',
                  style: textTheme.bodySmall,
                ),
                Text(
                  '470',
                  style: textTheme.bodySmall!.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 12,
                    ),
                    Text(
                      '4.3',
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                  width: 60,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      foregroundColor: AppColors.grey3,
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Add to cart',
                      style: textTheme.bodySmall?.copyWith(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<QuickPick> quickPickList = <QuickPick>[
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices'),
];
