
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class ArcBannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return ClipPath(
      clipper: ArcClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
        width: screenWidth,
        height: 200.0,
        decoration: BoxDecoration(
          color: ColorStyle.COLOR_WIDGET_PROFILE_HEADER_GRADIENT_BEGIN,
          gradient: LinearGradient(
            begin: const FractionalOffset(0.5, 0.0),
            end: const FractionalOffset(0.5, 1.0),
            colors: <Color>[
              ColorStyle.COLOR_WIDGET_PROFILE_HEADER_GRADIENT_BEGIN,
              ColorStyle.COLOR_WIDGET_PROFILE_HEADER_GRADIENT_END],
          ),
        ),
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height - 30);
    var firstPoint = Offset(size.width / 2, size.height - 30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 4), size.height - 30);
    var secondPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}