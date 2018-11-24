
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(GeneralConstants.CONSTANT_PAGE_APP_BAR_HEIGHT),
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            titleSpacing: 0.0,
            elevation: GeneralConstants.CONSTANT_PAGE_APP_BAR_ELEVATION,
            title: Text(
              '设置',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
        body: SettingWidget()
    );
  }
}