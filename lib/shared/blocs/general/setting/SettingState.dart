
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';

class SettingState {
  final bool isLoading;
  final String error;
  final Setting setting;

  SettingState({
    @required this.isLoading, 
    @required this.error, 
    @required this.setting});

  factory SettingState.initial() {
    return SettingState(
        isLoading: false,
        error: '',
        setting: null
    );
  }

  factory SettingState.loading() {
    return SettingState(
        isLoading: true,
        error: '',
        setting: null
    );
  }

  factory SettingState.failure(String error) {
    return SettingState(
        isLoading: false,
        error: error,
        setting: null
    );
  }

  factory SettingState.success(Setting setting) {
    return SettingState(
        isLoading: false,
        error: '',
        setting: setting
    );
  }

  @override
  int get hashCode =>
      isLoading.hashCode ^
      error.hashCode ^
      setting.hashCode;


  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is SettingState &&
              runtimeType == other.runtimeType &&
              isLoading == other.isLoading &&
              error == other.error &&
              setting == other.setting;

  @override
  String toString() =>
      'LoginState { isLoading: $isLoading, error: $error, token: $setting }';
}