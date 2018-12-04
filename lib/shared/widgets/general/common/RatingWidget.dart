
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final double rating;

  const RatingWidget({Key key, this.rating}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildNumericRating(context),
        SizedBox(width: 16.0),
        _buildStarRating(context),
      ],
    );
  }

  Widget _buildNumericRating(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          rating.toString(),
          style: Theme.of(context).textTheme
          .title.copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).accentColor
          ),
        ),
        SizedBox(height: 4.0),
      ],
    );
  }

  Widget _buildStarRating(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _ratingBar(context),
        Padding(
          padding: EdgeInsets.only(top: 4.0, left: 4.0),
        )
      ],
    );
  }

  Widget _ratingBar(BuildContext context) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= rating ? Theme.of(context).accentColor : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }
}