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
        width: MediaQuery.sizeOf(context).width * 0.28,
        height: MediaQuery.sizeOf(context).height * 0.11,
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                PngImage.generic(item.image),
                fit: BoxFit.scaleDown,
              ),
            ),
            Expanded(
              child: Text(
                item.title,
                style: textTheme.bodySmall,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Category> categoryList = <Category>[
  Category(image: 'category_1.png', title: 'Dry fruits'),
  Category(image: 'category_2.png', title: 'Gourmet cheese'),
  Category(image: 'category_3.png', title: 'Powdered spices'),
  Category(image: 'category_4.png', title: 'Fresh Herbs'),
  Category(image: 'category_5.png', title: 'Fresh fruits'),
  Category(image: 'category_6.png', title: 'Premium Herbs'),
];
