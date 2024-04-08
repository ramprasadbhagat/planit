import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planit/domain/home/entities/occasion.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class ShopByOccasion extends StatelessWidget {
  const ShopByOccasion({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Shop by occasion',
              style: textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: occasionList.length,
              itemBuilder: (BuildContext context, int index) =>
                  ShopByOccasionItem(
                item: occasionList.elementAt(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShopByOccasionItem extends StatelessWidget {
  final Occasion item;
  const ShopByOccasionItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.white,
              child: Image.asset(PngImage.generic(item.image)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(item.title),
        ],
      ),
    );
  }
}

List<Occasion> occasionList = <Occasion>[
  Occasion(image: 'occasion_1.png', title: 'Birthday'),
  Occasion(image: 'occasion_2.png', title: 'Travel'),
  Occasion(image: 'occasion_3.png', title: 'House party'),
  Occasion(image: 'occasion_4.png', title: 'Gifting'),
];
