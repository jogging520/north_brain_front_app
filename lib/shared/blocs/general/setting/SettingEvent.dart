
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';

abstract class SettingEvent {}

class WidgetInitialed extends SettingEvent {

  WidgetInitialed();

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialed;
}

class PropertyChanged extends SettingEvent {
  final Setting setting;

  PropertyChanged({@required this.setting});

  @override
  int get hashCode => this.setting.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is PropertyChanged &&
              setting == other.setting;
}