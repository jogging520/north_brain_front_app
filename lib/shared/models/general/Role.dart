import 'package:json_annotation/json_annotation.dart';

part 'Role.g.dart';


//类名：角色类
@JsonSerializable()
class Role {
  String id;
  String type;
  String name;
  List<String> appTypes;
  String category;
  List<int> permissions;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;

  Role(this.id, this.type, this.name, List<String> appTypes,
      this.permissions, this.createTime, this.timestamp, this.status,
      this.serialNo, {this.description}):
      this.appTypes = appTypes ?? <String>[];

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}