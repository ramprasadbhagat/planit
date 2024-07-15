import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/recipe_details/widgets/add_recipe_review_bottom_sheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:readmore/readmore.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImage.reviewIcon,
                width: 23,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Reviews',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        ListView.builder(
          primary: false,
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) => const ReviewItemCard(),
        ),
        Text(
          'View More',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
              ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(43),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(11)),
            ),
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => const CommonBottomSheet(
                child: AddRecipeReviewBottomSheet(),
              ),
            );
          },
          child: const Text('Add your review'),
        ),
      ],
    );
  }
}

class ReviewItemCard extends StatelessWidget {
  const ReviewItemCard({super.key});

  Widget buildStars(double rating) {
    const size = 18.0;
    final stars = <Widget>[];
    final fullStars = rating.floor();
    final hasHalfStar = (rating - fullStars) >= 0.5;

    for (var i = 0; i < fullStars; i++) {
      stars.add(
        const Icon(
          Icons.star,
          size: size,
        ),
      );
    }
    if (hasHalfStar) {
      stars.add(
        const Icon(
          Icons.star_half,
          size: size,
        ),
      );
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jenny Hiddlestone',
                              style: texttheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                children: [
                                  buildStars(4.3),
                                  Text(
                                    '4.3',
                                    style: texttheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 8,
                            color: AppColors.textBlack,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '2 weeks ago',
                            style: texttheme.bodySmall?.copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ReadMoreText(
                    'Love it. This is my go-to weekend breakfast . Absolutely delicious. Perfect for any occasion Love it. This is my go-to weekend breakfast . Absolutely delicious. Perfect for any occasion. ',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: AppColors.black,
                    trimCollapsedText: 'READ MORE',
                    trimExpandedText: 'READ LESS',
                    style: texttheme.bodySmall?.copyWith(
                      color: AppColors.textBlack,
                    ),
                    moreStyle: texttheme.bodySmall?.copyWith(
                      color: AppColors.textBlack,
                      fontWeight: FontWeight.bold,
                    ),
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
