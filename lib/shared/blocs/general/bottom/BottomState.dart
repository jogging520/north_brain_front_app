
import 'package:flutter/material.dart';

class BottomState {
  final String error;
  final int currentIndex;
  final List<Image> tabImages;
  final List<Text> tabTitles;

  BottomState({
    @required this.error,
    @required this.currentIndex,
    @required this.tabImages,
    @required this.tabTitles
  });

  factory BottomState.initial(List<Image> tabImages, List<Text> tabTitles) {
    return BottomState(
      error: '',
      currentIndex: 0,
      tabImages: tabImages,
      tabTitles: tabTitles
    );
  }

  factory BottomState.changed(int currentIndex, List<Image> tabImages, List<Text> tabTitles) {
    return BottomState(
      error: '',
      currentIndex: currentIndex,
      tabImages: tabImages,
      tabTitles: tabTitles
    );
  }

  factory BottomState.failed(String error) {
    return BottomState(
      error: error,
      currentIndex: 0,
      tabImages: null,
      tabTitles: null
    );
  }
}