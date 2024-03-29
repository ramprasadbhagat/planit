import 'package:flutter/material.dart';
import 'package:planit/presentation/core/section_title.dart';

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
            children: Iterable<int>.generate(8)
                .toList()
                .map((e) => const ShopByCategoryItem())
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ShopByCategoryItem extends StatelessWidget {
  const ShopByCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/images/products/sliding_image/492502a.jpg?ts=1690814287';
    return Card(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.2,
        height: MediaQuery.sizeOf(context).height * 0.1,
        // padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    'Dry',
                    style: textTheme.bodySmall,
                  ),
                  Text(
                    'fruits',
                    style: textTheme.bodySmall,
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
