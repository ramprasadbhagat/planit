import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/best_seller.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      color: AppColors.extraLightGray,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'BestSeller',
            style: textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestsellerList.length,
              itemBuilder: (BuildContext context, int index) =>
                  BestSellerItem(item: bestsellerList.elementAt(index)),
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  final BestSeller item;
  const BestSellerItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Image.asset(
                        PngImage.placeholder,
                        width: 120,
                        height: 130,
                        fit: BoxFit.scaleDown,
                      ),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.availableTagColor,
              ),
              child: Text(
                'Available',
                style: textTheme.bodySmall!.copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

List<BestSeller> bestsellerList = <BestSeller>[
  BestSeller(image: 'bestseller_1.png', title: 'Roasted & Salted\nCashew'),
  BestSeller(image: 'bestseller_2.png', title: 'Roasted & Salted\nCashew'),
  BestSeller(image: 'bestseller_3.png', title: 'Roasted & Salted\nCashew'),
];
