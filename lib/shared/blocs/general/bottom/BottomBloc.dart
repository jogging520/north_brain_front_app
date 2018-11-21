

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState> {
  @override
  BottomState get initialState => BottomState.initial(_initialTabImages(), _initialTabTitles());

  void onApplicationStart() {
    dispatch(ApplicationStarted());
  }

  void onTabChanged(int index) {
    dispatch(
      TabChanged(currentIndex: index)
    );
  }

  @override
  Stream<BottomState> mapEventToState(BottomState state, BottomEvent event) async* {
    if (event is TabChanged) {
      if (event.currentIndex == 0) {
        List<Image> tabImages = _exchangeTabImages(state.tabImages, event.currentIndex);
        List<Text> tabTitles = _exchangeTabTitles(state.tabTitles, event.currentIndex);

        yield BottomState.changed(event.currentIndex, tabImages, tabTitles);
      }
    }
  }

  List<Image> _initialTabImages() {
    return [
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_HOME, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_HOME_SELECTED, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_TRADE, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_TRADE_SELECTED, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_STATION, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_STATION_SELECTED, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_PROFILE, width: 24.0, height: 24.0),
      Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_PROFILE_SELECTED, width: 24.0, height: 24.0),
    ];
  }

  List<Text> _initialTabTitles() {
    List<Text> tabTitles = [];

    for (String title in GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES) {
      tabTitles.add(Text(
        title,
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM));

      tabTitles.add(Text(
        title,
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM_SELECTED));
    }

    
    return tabTitles;
  }

  List<Image> _exchangeTabImages(List<Image> tabImages, int currentIndex) {
    List<Image> newTabImages = [];

    if (currentIndex * 2 > tabImages.length) {
      return tabImages;
    }

    for (var i = 0; i < tabImages.length; i++) {
      if (i == currentIndex * 2) {
        newTabImages.add(tabImages[i + 1]);
      }

      if (i == currentIndex * 2 + 1) {
        newTabImages.add(tabImages[i - 1]);
      }

      newTabImages.add(tabImages[i]);
    }

    return newTabImages;
  }

  List<Text> _exchangeTabTitles(List<Text> tabTitles, int currentIndex) {
    List<Text> newTabTitles = [];

    if (currentIndex * 2 > tabTitles.length) {
      return tabTitles;
    }

    for (var i = 0; i < tabTitles.length; i++) {
      if (i == currentIndex * 2) {
        newTabTitles.add(tabTitles[i + 1]);
      }

      if (i == currentIndex * 2 + 1) {
        newTabTitles.add(tabTitles[i - 1]);
      }

      newTabTitles.add(tabTitles[i]);
    }

    return newTabTitles;
  }

}