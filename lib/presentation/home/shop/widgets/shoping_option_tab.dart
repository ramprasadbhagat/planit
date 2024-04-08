import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
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
              labelPadding: const EdgeInsets.all(1),
              labelStyle: textTheme.bodySmall!.copyWith(fontSize: 11),
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
                      horizontal: 8,
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
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 410,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  QuickPickTabView(),
                  Center(child: Text('Shop by category')),
                  Center(child: Text('Shop by occasion')),
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
          runSpacing: 6,
          spacing: 1,
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
        width: MediaQuery.sizeOf(context).width * 0.277,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  child: Image.asset(PngImage.generic(item.image)),
                ),
                item.editable
                    ? const AddToListTextField()
                    : const AddToListButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: textTheme.bodySmall?.copyWith(fontSize: 10),
                ),
                Text(
                  '1g',
                  style: textTheme.bodySmall?.copyWith(
                    color: AppColors.grey1,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '\$430 ',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 9,
                  ),
                ),
                Text(
                  ' 470',
                  style: textTheme.bodySmall!.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: AppColors.lightGray,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 9,
                    ),
                    Text(
                      '4.3',
                      style: textTheme.bodySmall?.copyWith(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(color: Colors.black),
                      foregroundColor: AppColors.grey3,
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Add to cart',
                      style: textTheme.bodySmall?.copyWith(fontSize: 9),
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

class AddToListButton extends StatelessWidget {
  const AddToListButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 25,
      width: 75,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(color: Colors.black),
          foregroundColor: AppColors.grey3,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 3,
          ),
          textStyle: textTheme.bodySmall
              ?.copyWith(fontSize: 9, color: AppColors.lightGrey),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 12,
              color: AppColors.grey3,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Add to list',
            ),
          ],
        ),
      ),
    );
  }
}

class AddToListTextField extends StatefulWidget {
  const AddToListTextField({super.key});

  @override
  State<AddToListTextField> createState() => _AddToListTextFieldState();
}

class _AddToListTextFieldState extends State<AddToListTextField> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.favorite_rounded,
            size: 12,
            color: Color.fromRGBO(167, 22, 0, 1),
          ),
          GestureDetector(
            onTap: () => setState(() => countValue += 1),
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.black,
            ),
          ),
          Text(countValue.toString()),
          GestureDetector(
            onTap: () => setState(() {
              if (countValue > 1) {
                countValue -= 1;
              }
            }),
            child: const Icon(
              Icons.remove,
              size: 12,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

List<QuickPick> quickPickList = <QuickPick>[
  QuickPick(image: 'quick_pick_1.png', title: 'Fresh Spices', editable: false),
  QuickPick(image: 'quick_pick_2.png', title: 'Fresh Spices', editable: true),
  QuickPick(image: 'quick_pick_3.png', title: 'Fresh Spices', editable: false),
  QuickPick(image: 'quick_pick_4.png', title: 'Fresh Spices', editable: false),
  QuickPick(image: 'quick_pick_5.png', title: 'Fresh Spices', editable: false),
  QuickPick(image: 'quick_pick_6.png', title: 'Fresh Spices', editable: false),
];
