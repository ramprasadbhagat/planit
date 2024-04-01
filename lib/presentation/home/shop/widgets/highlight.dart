import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/highlight.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class HighLightSection extends StatelessWidget {
  const HighLightSection({super.key});

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
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: highlightList.length,
              itemBuilder: (BuildContext context, int index) =>
                  HighlightItem(item: highlightList.elementAt(index)),
            ),
          ),
        ],
      ),
    );
  }
}

class HighlightItem extends StatelessWidget {
  final Highlight item;
  const HighlightItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.33,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PngImage.generic(item.image)),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Text(
              item.title,
              style: textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

List<Highlight> highlightList = <Highlight>[
  Highlight(title: 'Roasted & Salted \n Cashew', image: 'highlight_1.png'),
  Highlight(title: 'Natural Fresh \n Almonds', image: 'highlight_2.png'),
  Highlight(title: 'Aashirvaad Chakki \n Atta', image: 'highlight_3.png'),
];
