import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/category.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/utils/png_image.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SectionTitle(
            title: 'Shop by category',
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            runSpacing: 10,
            children: categoryList
                .map(
                  (e) => ShopByCategoryItem(
                    item: e,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ShopByCategoryItem extends StatelessWidget {
  final Category item;
  const ShopByCategoryItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.2,
        height: MediaQuery.sizeOf(context).height * 0.12,
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Image.asset(
                  PngImage.generic(item.image),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    item.title,
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Category> categoryList = <Category>[
  Category(image: 'category_1.png', title: 'Dry\nfruits'),
  Category(image: 'category_2.png', title: 'Gourmet\ncheese'),
  Category(image: 'category_3.png', title: 'Powdered\nspices'),
  Category(image: 'category_4.png', title: 'Fresh\nfruits'),
  Category(image: 'category_5.png', title: 'Dairy and\nbreakfast'),
  Category(image: 'category_6.png', title: 'Fresh\nnuts'),
  Category(image: 'category_7.png', title: 'Premium\npulses'),
  Category(image: 'category_8.png', title: 'Herbs'),
];
