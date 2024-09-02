import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/domain/recipe/entities/recipe.dart';
import 'package:planit/presentation/recipe_details/widgets/recipe_favourite_button.dart';
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
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: AppColors.extraLightGrey3,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: FlutterCarousel(
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
                        width: 150,
                      ),
                    ]
                  : (recipe.recipeImages).map((i) {
                      return SizedBox(
                        width: double.maxFinite,
                        child: CachedNetworkImage(
                          imageUrl: i.getValue(),
                          fit: BoxFit.cover,
                          errorWidget: (context, error, stack) {
                            return Image.asset(
                              PngImage.placeholder,
                              width: 150,
                            );
                          },
                        ),
                      );
                    }).toList(),
            ),
          ),
          Positioned(
            top: -20,
            right: 16,
            child: RecipeFavouriteButton(recipe: recipe),
          ),
          Positioned(
            bottom: -50,
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
