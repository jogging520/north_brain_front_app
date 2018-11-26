
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

class PosterWidget extends StatelessWidget {

  final String imageUrl;
  final double height;

  const PosterWidget({
    Key key,
    @required this.imageUrl,
    this.height = 100.0}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = height * GeneralConstants.CONSTANT_WIDGET_POSTER_RATIO;

    return Material(
      borderRadius: BorderRadius.circular(4.0),
      elevation: 2.0,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.fill,
        width: width,
        height: height,
      ),
    );
  }

}