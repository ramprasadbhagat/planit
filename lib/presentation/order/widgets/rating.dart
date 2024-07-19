import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/presentation/theme/colors.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.00),
      child: RatingBar.builder(
        itemSize: 30,
        initialRating: 0,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: AppColors.primary,
        ),
        onRatingUpdate: (rating) => context
            .read<AddReviewBloc>()
            .add(AddReviewEvent.onRatingChange(rating: rating)),
      ),
    );
  }
}

class StarRatingShow extends StatefulWidget {
  const StarRatingShow({
    super.key,
    required this.starValue,
  });
  final double starValue;

  @override
  State<StarRatingShow> createState() => _StarRatingShowState();
}

class _StarRatingShowState extends State<StarRatingShow> {
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      // minRating: 1,
      // maxRating: 5,

      allowHalfRating: true,
      itemSize: 20,
      initialRating: widget.starValue,
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: Color.fromRGBO(255, 194, 37, 1),
        ),
        half: const Icon(
          Icons.star_half,
          color: Color.fromRGBO(255, 194, 37, 1),
        ),
        empty: const Icon(
          Icons.star_border_outlined,
          color: Color.fromRGBO(255, 194, 37, 1),
        ),
      ),
      onRatingUpdate: (rating) {
        // print(rating);
      },
    );
  }
}
