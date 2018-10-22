
import 'package:json_annotation/json_annotation.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

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
}