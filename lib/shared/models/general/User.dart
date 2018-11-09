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

  @override
  int get hashCode => id.hashCode ^ type.hashCode ^ name.hashCode
  ^ realName.hashCode ^ appTypes.hashCode ^ category.hashCode ^ roles.hashCode
  ^ affiliations.hashCode ^ createTime.hashCode ^ timestamp.hashCode ^ status.hashCode
  ^ serialNo.hashCode ^ password.hashCode ^ salt.hashCode ^ avatar.hashCode
  ^ permissions.hashCode ^ mobile.hashCode ^ email.hashCode ^ weChat.hashCode
  ^ description.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              type == other.type &&
              name == other.name &&
              realName == other.realName &&
              appTypes == other.appTypes &&
              category == other.category &&
              roles == other.roles &&
              affiliations == other.affiliations &&
              createTime == other.createTime &&
              timestamp == other.timestamp &&
              status == other.status &&
              serialNo == other.serialNo &&
              password == other.password &&
              salt == other.salt &&
              avatar == other.avatar &&
              permissions == other.permissions &&
              mobile == other.mobile &&
              email == other.email &&
              weChat == other.weChat &&
              description == other.description;
}