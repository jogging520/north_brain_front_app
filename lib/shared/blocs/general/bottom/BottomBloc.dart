
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final List<List<Image>> tabImages = [
  [
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_HOME, width: 24.0, height: 24.0),
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_HOME_SELECTED, width: 24.0, height: 24.0),
  ],
  [
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_TRADE, width: 24.0, height: 24.0),
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_TRADE_SELECTED, width: 24.0, height: 24.0),
  ],
  [
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_STATION, width: 24.0, height: 24.0),
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_STATION_SELECTED, width: 24.0, height: 24.0),
  ],
  [
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_PROFILE, width: 24.0, height: 24.0),
    Image.asset(ImageStyle.IMAGE_BOTTOM_NAVIGATOR_PROFILE_SELECTED, width: 24.0, height: 24.0),
  ]
];

final List<List<Text>> tabTitles = [
  [
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[0],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM),
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[0],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM_SELECTED),
  ],
  [
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[1],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM),
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[1],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM_SELECTED),
  ],
  [
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[2],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM),
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[2],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM_SELECTED),
  ],
  [
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[3],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM),
    Text(
        GeneralConstants.CONSTANT_WIDGET_BOTTOM_TITLES[3],
        style: ContextStyle.CONTEXT_WIDGET_BOTTOM_SELECTED),
  ],
];

class BottomBloc extends Bloc<BottomEvent, BottomState> {

  @override
  BottomState get initialState => BottomState.initial(_initialTabImages(), _initialTabTitles());

  void onTabChanged(int index) {
    dispatch(
      TabChanged(currentIndex: index)
    );
  }

  @override
  Stream<BottomState> mapEventToState(BottomState state, BottomEvent event) async* {
    if (event is TabChanged) {
      List<Image> newTabImages = _exchangeTabImages(event.currentIndex);
      List<Text> newTabTitles = _exchangeTabTitles(event.currentIndex);

      yield BottomState.changed(event.currentIndex, newTabImages, newTabTitles);
    }
  }

  List<Image> _initialTabImages() {
    return [
      tabImages[0][1],
      tabImages[1][0],
      tabImages[2][0],
      tabImages[3][0],
    ];
  }

  List<Text> _initialTabTitles() {
    return [
      tabTitles[0][1],
      tabTitles[1][0],
      tabTitles[2][0],
      tabTitles[3][0],
    ];
  }

  List<Image> _exchangeTabImages(int currentIndex) {
    List<Image> newTabImages = [];

    for (var i = 0; i < tabImages.length; i++) {
      if (i == currentIndex) {
        newTabImages.add(tabImages[i][1]);
      } else {
        newTabImages.add(tabImages[i][0]);
      }
    }

    return newTabImages;
  }

  List<Text> _exchangeTabTitles(int currentIndex) {
    List<Text> newTabTitles = [];

    for (var i = 0; i < tabTitles.length; i++) {
      if (i == currentIndex) {
        newTabTitles.add(tabTitles[i][1]);
      } else {
        newTabTitles.add(tabTitles[i][0]);
      }
    }

    return newTabTitles;
  }

}