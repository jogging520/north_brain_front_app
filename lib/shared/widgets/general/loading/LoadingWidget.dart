
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningCircle(
      color: ColorStyle.COLOR_WIDGET_LOADING_INDICATOR,
      shape: BoxShape.circle,
    );
  }
}