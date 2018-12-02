
import 'package:fluro/fluro.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/animations/Animation.dart';

///全局应用：包括路由、事件总线等。

EventBus eventBus = new EventBus();

class Application {
  static Router router;

  static void navigateTo(BuildContext context, String route) {
    Application.router.navigateTo(
        context,
        route,
        transition: Transition.transition(),
        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
    ).then((_) {});
  }
}