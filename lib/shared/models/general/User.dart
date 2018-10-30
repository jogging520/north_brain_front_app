import 'dart:collection';

import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()
class User {
  String id;
  String type;
  String name;
  @JsonKey(nullable: true)
  String password;
  @JsonKey(nullable: true)
  String salt;
  String realName;
  @JsonKey(nullable: true)
  String avatar;
  List<String> appTypes;
  String category;
  List<String> roles;
  @JsonKey(nullable: true)
  List<int> permissions;
  Map<String, List<String>> affiliations;
  @JsonKey(nullable: true)
  String mobile;
  @JsonKey(nullable: true)
  String email;
  @JsonKey(nullable: true)
  String weChat;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;

  User(this.id, this.type, this.name, this.realName, List<String> appTypes,
      this.category, List<String> roles, Map<String, List<String>> affiliations,
      this.createTime, this.timestamp, this.status, this.serialNo,
      {this.password, this.salt, this.avatar, List<int> permissions,
        this.mobile, this.email, this.weChat, this.description}) {
    this.roles = roles ?? <String>[];
    this.affiliations = affiliations ?? new HashMap();
    this.permissions = permissions ?? <int>[];
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}