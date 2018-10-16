import 'package:json_annotation/json_annotation.dart';

part 'Organization.g.part';

//类名：组织机构类
//用途：用于组织机构的封装
@JsonSerializable()
class Organization {
  String id;
  String code;
  String name;
  String type;
  @JsonKey(nullable: true)
  String category;
  String region;
  @JsonKey(nullable: true)
  String parent;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;
  @JsonKey(nullable: true)
  List<Organization> children;

  Organization(this.id, this.code, this.name, this.type, this.region,
      this.status, this.serialNo, this.description,
      {this.category, this.parent, this.createTime, this.timestamp,
        List<Organization> children}):
        this.children = children ?? <Organization>[];

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
}