
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';

class MenuState {
  final String error;
  final bool isLoading;
  final Menu menu;

  MenuState({
    @required this.error,
    @required this.isLoading,
    @required this.menu});

  factory MenuState.initial() {
    return MenuState(
        error: '',
        isLoading: false,
        menu: null
    );
  }

  factory MenuState.loading() {
    return MenuState(
        error: '',
        isLoading: true,
        menu: null
    );
  }

  factory MenuState.success(Menu menu) {
    return MenuState(
        error: '',
        isLoading: false,
        menu: menu
    );
  }

  factory MenuState.failure(String error) {
    return MenuState(
        error: error,
        isLoading: false,
        menu: null
    );
  }
}