import 'package:flutter/material.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';

class HighLight extends StatelessWidget {
  const HighLight({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: AppColors.extraLightGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Highlights',
            style: textTheme.labelMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) =>
                  const HighlightItem(),
            ),
          ),
        ],
      ),
    );
  }
}

class HighlightItem extends StatelessWidget {
  const HighlightItem({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=85,metadata=none,w=120,h=120/app/assets/products/sliding_images/jpeg/44ad92be-1db7-4015-9072-3181958cf0a5.jpg?ts=1705560472';
    final textTheme = Theme.of(context).textTheme;

    return Card(
      color: AppColors.accentColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            Image.asset(
              SvgImage.highlight1,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Natural Fresh',
              style: textTheme.bodySmall,
            ),
            Text(
              'Almonds',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
