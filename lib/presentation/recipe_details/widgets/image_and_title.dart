import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/png_image.dart';
import 'package:planit/utils/svg_image.dart';

class ImageAndTitleSection extends StatelessWidget {
  final Recipe recipe;
  const ImageAndTitleSection({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 65),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // ClipRRect(
          //   borderRadius: const BorderRadius.all(Radius.circular(10)),
          //   child: Image.asset(
          //     PngImage.generic('recipe.png'),
          //   ),
          // ),
          FlutterCarousel(
            options: CarouselOptions(
              viewportFraction: 1,
              height: 196,
              autoPlay: true,
              showIndicator: false,
            ),
            items: recipe.recipeImages.isEmpty
                ? [
                    Image.asset(
                      PngImage.placeholder,
                    ),
                  ]
                : (recipe.recipeImages).map((i) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: CachedNetworkImage(
                          imageUrl: i.getValue(),
                          fit: BoxFit.cover,
                          errorWidget: (context, error, stack) {
                            return Image.asset(
                              PngImage.placeholder,
                              fit: BoxFit.fitHeight,
                            );
                          },
                        ),
                      ),
                    );
                  }).toList(),
          ),
          const Positioned(
            top: -17,
            right: 16,
            child: Material(
              color: AppColors.extraLightGrey5,
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.deepRed,
                  size: 22,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -55,
            left: 14,
            right: 14,
            child: Material(
              color: AppColors.black,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.white,
                  ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: 18,
                    top: -12,
                    child: Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Text(
                            recipe.rating.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 8.5,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.name.getValue(),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          recipe.writeup.getValue(),
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        const Divider(
                          indent: 0,
                          endIndent: 60,
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  SvgImage.spoonIcon,
                                  width: 10,
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Cuisine :',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: recipe.cuisine.getValue(),
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  SvgImage.spoonCircularIcon,
                                  width: 10,
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Course :',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: recipe.course.getValue(),
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
