
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Order.g.dart';

@JsonSerializable()
class Order {
  String id;
  String name;
  String type;

  Order({
  @required this.id,
  @required this.name,
  @required this.type,});

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ type.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Order &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              type == other.type;
}