import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, this.rating});
  final double? rating;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      itemSize: rating ?? 20,
      allowHalfRating: true,
      ignoreGestures: true,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
      onRatingUpdate: (rating) {},
    );
  }
}
