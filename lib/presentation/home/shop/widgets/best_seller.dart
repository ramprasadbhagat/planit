import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/images/products/sliding_image/492502a.jpg?ts=1690814287';
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
            style: textTheme.labelMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const BestSellerItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/images/products/sliding_image/492502a.jpg?ts=1690814287';
    return Column(
      children: [
        Stack(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Image.network(
                      imageUrl,
                      width: 120,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const Text('Roasted &Salted'),
                    const Text('Cashew'),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -2,
              left: 30,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.green,
                ),
                child: Text(
                  'Available',
                  style: textTheme.bodySmall!.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
