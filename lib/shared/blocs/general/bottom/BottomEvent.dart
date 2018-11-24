
import 'package:flutter/material.dart';

abstract class BottomEvent {}

class TabChanged extends BottomEvent {
  final int currentIndex;

  TabChanged({@required this.currentIndex});

  @override
  int get hashCode => this.currentIndex.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is TabChanged &&
              currentIndex == other.currentIndex;
}