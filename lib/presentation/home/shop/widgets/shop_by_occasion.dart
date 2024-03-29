import 'package:flutter/material.dart';

class ShopByOccasion extends StatelessWidget {
  const ShopByOccasion({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Shop by occasion',
            style: textTheme.labelMedium,
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const ShopByOccasionItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShopByOccasionItem extends StatelessWidget {
  const ShopByOccasionItem({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/app/images/products/sliding_image/492502a.jpg?ts=1690814287';
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
            child: const CircleAvatar(
              radius: 40,
              foregroundImage: NetworkImage(imageUrl, scale: 0.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Birthday'),
        ],
      ),
    );
  }
}
