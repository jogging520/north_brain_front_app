import 'package:json_annotation/json_annotation.dart';

part 'Role.g.part';


//类名：角色类
@JsonSerializable()
class Role {
  String id;
  String type;
  String name;
  @JsonKey(nullable: true)
  List<String> appTypes;
  @JsonKey(nullable: true)
  String category;
  List<int> permissions;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;

  Role(this.id, this.type, this.name, this.permissions, this.status,
      this.serialNo, this.description,
      {List<String> appTypes, this.category, this.createTime, this.timestamp}):
      this.appTypes = appTypes ?? <String>[];

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}