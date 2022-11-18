// rating bar model widget para ser utilizado em todo o app

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  final double rating;
  final double size;
  final double spacing;
  final double initialRating;
  final Function(double) onRatingUpdate;

  const RatingBarWidget({
    super.key,
    required this.rating,
    required this.size,
    required this.spacing,
    required this.initialRating,
    required this.onRatingUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: size,
      itemPadding: EdgeInsets.symmetric(horizontal: spacing),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
