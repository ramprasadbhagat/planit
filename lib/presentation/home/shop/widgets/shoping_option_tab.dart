import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/theme/colors.dart';

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
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      const SectionTitle(title: 'Your quick picks'),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        children: Iterable<int>.generate(6)
                            .toList()
                            .map((e) => const ShoppingOptionCard())
                            .toList(),
                      ),
                    ],
                  ),
                  const Center(child: Text('Tab 2 Content')),
                  const Center(child: Text('Tab 3 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingOptionCard extends StatelessWidget {
  const ShoppingOptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=85,metadata=none,w=120,h=120/app/assets/products/sliding_images/jpeg/44ad92be-1db7-4015-9072-3181958cf0a5.jpg?ts=1705560472';
    return Column(
      children: [
        Card(
          child: SizedBox(
            height: 90,
            width: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const Positioned(
                  bottom: 3,
                  right: 3,
                  child: ColoredBox(
                    color: AppColors.primary,
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'Amul Cow Milk',
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
