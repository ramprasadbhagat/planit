import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  var ratingValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          RatingBar.builder(
            itemSize: 15,
            initialRating: 0,
            minRating: 0.5,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            // unratedColor: Colors.white,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            onRatingUpdate: (rating) {
              ratingValue = rating;

              setState(() {});
              print(rating);
            },
          ),
          if (ratingValue > 0) ...[
            const SizedBox(width: 4),
            Text(
              '$ratingValue',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
