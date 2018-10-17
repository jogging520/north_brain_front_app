import 'package:json_annotation/json_annotation.dart';

part 'Organization.g.dart';

//类名：组织机构类
//用途：用于组织机构的封装
@JsonSerializable()
class Organization {
  String id;
  String code;
  String name;
  String type;
  String category;
  String region;
  @JsonKey(nullable: true)
  String parent;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;
  @JsonKey(nullable: true)
  List<Organization> children;

  Organization(this.id, this.code, this.name, this.type, this.category,
      this.region, this.createTime, this.timestamp, this.status, this.serialNo,
      {this.parent, this.description, List<Organization> children}):
        this.children = children ?? <Organization>[];

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
}