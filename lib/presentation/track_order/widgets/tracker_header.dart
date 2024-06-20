import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/presentation/track_order/widgets/rating.dart';
import 'package:planit/utils/png_image.dart';

class TrackerHeader extends StatelessWidget {
  const TrackerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final images = <String>[
      PngImage.loginBackGround,
      PngImage.placeholder,
    ];
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        images.isEmpty
            ? SizedBox(
                height: 82,
                child: Center(
                  child: Image.asset(
                    PngImage.placeholder,
                    height: 67,
                    width: 63,
                  ),
                ),
              )
            : SizedBox(
                height: 82,
                width: 81,
                child: FlutterCarousel(
                  options: CarouselOptions(
                    height: 80,
                    viewportFraction: 1,
                    showIndicator: true,
                    enableInfiniteScroll: true,
                    slideIndicator: const CircularSlideIndicator(
                      itemSpacing: 10,
                      indicatorRadius: 4,
                      currentIndicatorColor: AppColors.transparent,
                      indicatorBackgroundColor: AppColors.transparent,
                    ),
                    indicatorMargin: 8,
                  ),
                  items: images
                      .map(
                        (e) => Image.asset(
                          e,
                          height: 82,
                        ),
                      )
                      .toList(),
                ),
              ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order ID : ORD 10786420007',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Text(
              'Johnson Almonds',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              'Johnson Fresh almonds 1 kg pack',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.grey2,
              ),
            ),
            const StarRating(),
            Text(
              'Price : ₹ 699.00 ',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
