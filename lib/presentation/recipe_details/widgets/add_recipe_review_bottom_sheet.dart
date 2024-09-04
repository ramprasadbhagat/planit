import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:planit/application/recipe/recipe_details/recipe_details_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/presentation/core/custom_snackbar/custom_snackbar.dart';
import 'package:planit/presentation/theme/colors.dart';
import 'package:planit/utils/string_constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddRecipeReviewBottomSheet extends StatelessWidget {
  const AddRecipeReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecipeDetailsBloc, RecipeDetailsState>(
      listenWhen: (previous, current) =>
          previous.addingReview != current.addingReview &&
          !current.addingReview,
      buildWhen: (previous, current) =>
          previous.addingReview != current.addingReview,
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(() => null, (a) {
          a.fold(
            (l) {
              CustomSnackbar.showErrorMessage(context, l.failureMessage);
            },
            (r) {
              CustomSnackbar.showSuccessMessage(
                context,
                StringConstant.reviewAddedSuccessfully,
              );
              context.router.maybePop();
            },
          );
        });
      },
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.addingReview,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 95),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Share your review',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RatingBar(
                      ratingWidget: RatingWidget(
                        empty: const Icon(Icons.star_border),
                        full: const Icon(Icons.star),
                        half: const Icon(Icons.star_half),
                      ),
                      allowHalfRating: true,
                      onRatingUpdate: (v) => context
                          .read<RecipeDetailsBloc>()
                          .add(RecipeDetailsEvent.ratingChange(v)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      clipBehavior: Clip.hardEdge,
                      elevation: 5,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Write your comment',
                          fillColor: AppColors.whiteBgCard,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          filled: true,
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.hintStyle,
                        ),
                        onChanged: (value) => context
                            .read<RecipeDetailsBloc>()
                            .add(RecipeDetailsEvent.commentChange(value)),
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                        ),
                      ),
                      onPressed: () => context.read<RecipeDetailsBloc>().add(
                            RecipeDetailsEvent.addReviewClicked(
                              reviewerName: context
                                  .read<UserProfileBloc>()
                                  .state
                                  .user
                                  .fullName
                                  .getOrDefaultValue('NA'),
                            ),
                          ),
                      child: const Text('Submit'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
