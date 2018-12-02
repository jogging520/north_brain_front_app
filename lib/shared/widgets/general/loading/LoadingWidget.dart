
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningCircle(
      color: Theme.of(context).primaryColor,
      shape: BoxShape.circle,
    );
  }
}