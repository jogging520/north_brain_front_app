
import 'dart:math';

import 'package:fluro/fluro.dart';

class Transition {
  static const Duration CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION = Duration(microseconds: 400);

  static List<TransitionType> _transitionTypes = [
    TransitionType.inFromBottom,
    TransitionType.fadeIn,
    TransitionType.inFromLeft,
    TransitionType.inFromRight,
    TransitionType.native,
    TransitionType.nativeModal
  ];

  static Random _random = Random();

  static TransitionType transition() => _transitionTypes[_random.nextInt(_transitionTypes.length)];
}