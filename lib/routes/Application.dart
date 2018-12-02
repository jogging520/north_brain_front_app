
import 'package:fluro/fluro.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/animations/Animation.dart';

///全局应用：包括路由、事件总线等。

EventBus eventBus = new EventBus();

class Application {
  static Router router;
}