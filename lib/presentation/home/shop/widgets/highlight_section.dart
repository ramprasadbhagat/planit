import 'package:flutter/material.dart';
import 'package:planit/domain/home/entities/highlight.dart';
import 'package:planit/presentation/core/section_title.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';

class HighLightSection extends StatelessWidget {
  const HighLightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: AppColors.extraLightGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: 'Highlights',
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 190,
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

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.33,
            padding: const EdgeInsets.all(6),
            color: AppColors.lightGrey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(PngImage.generic(item.image)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    item.title,
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -1.8,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.black,
            ),
            child: Text(
              '12 % off',
              style: textTheme.bodySmall!.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}

List<Highlight> highlightList = <Highlight>[
  Highlight(title: 'Roasted & Salted \n Cashew', image: 'highlight_1.png'),
  Highlight(title: 'Natural Fresh \n Almonds', image: 'highlight_2.png'),
  Highlight(title: 'Aashirvaad Chakki \n Atta', image: 'highlight_3.png'),
];
