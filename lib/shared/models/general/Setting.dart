
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Setting.g.dart';

///设置类
@JsonSerializable()
class Setting {
  String user;
  bool dark;

  Setting({
    @required this.user,
    @required this.dark
  });

  factory Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);

  Map<String, dynamic> toJson() => _$SettingToJson(this);

  @override
  int get hashCode => user.hashCode ^ dark.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Setting &&
              runtimeType == other.runtimeType &&
              user == other.user &&
              dark == other.dark;
}