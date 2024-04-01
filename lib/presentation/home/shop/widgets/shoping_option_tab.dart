import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/domain/home/entities/quick_pick.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ShoppingOptionTab extends StatelessWidget {
  const ShoppingOptionTab({super.key});

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
              indicatorWeight: 1,
              labelPadding: const EdgeInsets.all(1),
              labelStyle:
                  textTheme.bodySmall!.copyWith(color: AppColors.lightGray2),
              labelColor: AppColors.black,
              tabs: const [
                Tab(
                  text: 'Your favorite picks',
                ),
                Tab(text: 'Shop by category'),
                Tab(text: 'Shop by occasion'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              width: MediaQuery.sizeOf(context).width,
              child: const TabBarView(
                children: [
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
          runSpacing: 10,
          spacing: 10,
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

    return Column(
      children: [
        Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PngImage.generic(item.image)),
              fit: BoxFit.fitHeight,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                color: AppColors.primary,
                child: const Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              item.title,
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              'Rs. 85.00/Ltr',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}

List<QuickPick> quickPickList = <QuickPick>[
  QuickPick(image: 'quick_pick_1.png', title: 'Amul Cow Milk'),
  QuickPick(image: 'quick_pick_2.png', title: 'Whole Spices'),
  QuickPick(image: 'quick_pick_3.png', title: 'Chia Seeds'),
  QuickPick(image: 'quick_pick_4.png', title: 'Makhana'),
  QuickPick(image: 'quick_pick_5.png', title: 'Blueberry'),
  QuickPick(image: 'quick_pick_6.png', title: 'Corn Seeds'),
];
