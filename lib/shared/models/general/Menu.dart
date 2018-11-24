
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

part 'Menu.g.dart';

//类名：菜单类
//用途：用于首页抽屉的菜单展示
@JsonSerializable()
class Menu {
  String backgroundImage;
  String title;
  String subTitle;
  AvatarType avatarType;
  String avatar;
  String navigator;

  Menu({
    @required this.backgroundImage,
    @required this.title,
    @required this.subTitle,
    @required this.avatarType,
    @required this.avatar,
    @required this.navigator,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);

  @override
  int get hashCode => backgroundImage.hashCode ^ title.hashCode ^ subTitle.hashCode
  ^ avatarType.hashCode ^ avatar.hashCode ^ navigator.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Menu &&
              runtimeType == other.runtimeType &&
              backgroundImage == other.backgroundImage &&
              title == other.title &&
              subTitle == other.subTitle &&
              avatarType == other.avatarType &&
              avatar == other.avatar &&
              navigator == other.navigator;
}