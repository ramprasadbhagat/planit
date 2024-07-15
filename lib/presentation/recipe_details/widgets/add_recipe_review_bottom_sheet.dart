import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:planit/presentation/theme/colors.dart';

class AddRecipeReviewBottomSheet extends StatelessWidget {
  const AddRecipeReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 95),
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
              // itemSize: 27,
              ratingWidget: RatingWidget(
                empty: const Icon(Icons.star_border),
                full: const Icon(Icons.star),
                half: const Icon(Icons.star_half),
              ),
              allowHalfRating: true,
              onRatingUpdate: (v) {},
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
                  filled: true,
                  labelStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
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
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
