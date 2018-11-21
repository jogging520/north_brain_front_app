
import 'package:flutter/material.dart';

abstract class PolicyEvent {}

class InitialWidget extends PolicyEvent {
  final String type;

  InitialWidget({
    @required this.type
  });

  @override
  int get hashCode => this.type.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is InitialWidget &&
              type == other.type;
}

class SearchButtonPressed extends PolicyEvent {
  final String type;
  final String name;
  final String description;

  SearchButtonPressed({
    @required this.type,
    @required this.name,
    @required this.description,
  });

  @override
  int get hashCode => this.type.hashCode ^ this.name.hashCode ^ this.description.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is SearchButtonPressed &&
              type == other.type &&
              name == other.name &&
              description == other.description;
}