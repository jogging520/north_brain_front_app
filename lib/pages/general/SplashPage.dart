
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(ImageStyle.IMAGE_SPLASH),
        resizeToAvoidBottomPadding: false
    );
  }
}
