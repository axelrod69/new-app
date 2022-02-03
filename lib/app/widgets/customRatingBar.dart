import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  double ratings;

  CustomRatingBar(this.ratings);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: ratings,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 16,
      glowColor: Colors.white,
      glow: true,
      ratingWidget: RatingWidget(
          full: Icon(
            Icons.star,
            color: Colors.white,
          ),
          half: Icon(
            Icons.star_half,
            color: Colors.white,
          ),
          empty: Icon(
            Icons.star_border,
            color: Colors.white,
          )),
      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
      onRatingUpdate: (rating) {},
    );
  }
}
