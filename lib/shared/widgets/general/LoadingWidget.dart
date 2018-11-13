
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.3,
          child: ModalBarrier(dismissible: false, color: ColorStyle.COLOR_WIDGET_LOADING_INDICATOR),
        ),
        Center(
          child: CircularProgressIndicator(),
        )
      ],
    );
  }

}