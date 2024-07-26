import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/recipe/recipe_details/recipe_details_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/recipe/entities/recipe_review.dart';
import 'package:planit/presentation/core/common_bottomsheet.dart';
import 'package:planit/presentation/core/no_data.dart';
import 'package:planit/presentation/core/rating_star.dart';
import 'package:planit/presentation/recipe_details/widgets/add_recipe_review_bottom_sheet.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/svg_image.dart';
import 'package:readmore/readmore.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timeago/timeago.dart' as timeago;

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
        BlocBuilder<RecipeDetailsBloc, RecipeDetailsState>(
          builder: (context, state) {
            if (!state.isFetching && state.recipeDetails.reviews.isEmpty) {
              return const NoData(
                message: 'No Review Found',
              );
            }

            return Skeletonizer(
              enabled: state.isFetching,
              child: ListView.builder(
                primary: false,
                itemCount: state.recipeDetails.reviews.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => ReviewItemCard(
                  review: state.recipeDetails.reviews[index],
                ),
              ),
            );
          },
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
        BlocBuilder<RecipeDetailsBloc, RecipeDetailsState>(
          builder: (context, state) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(43),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                ),
              ),
              onPressed: (context.read<AuthBloc>().state.isUnAuthenticated ||
                      state.recipeDetails.reviews.any(
                        (element) =>
                            element.userId ==
                            context.read<UserProfileBloc>().state.user.id,
                      ))
                  ? null
                  : () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) =>
                            const CommonBottomSheet(
                          child: AddRecipeReviewBottomSheet(),
                        ),
                      );
                    },
              child: const Text('Add your review'),
            );
          },
        ),
      ],
    );
  }
}

class ReviewItemCard extends StatelessWidget {
  final RecipeReview review;
  const ReviewItemCard({super.key, required this.review});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              review.recipeReviewerName.getValue(),
                              style: texttheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: RatingStar(
                                value: review.recipeRating,
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
                            timeago.format(review.createdAt),
                            style: texttheme.bodySmall?.copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ReadMoreText(
                    review.recipeReviewComments.getValue(),
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
