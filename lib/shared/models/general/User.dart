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
  @JsonKey(nullable: true)
  List<String> appTypes;
  @JsonKey(nullable: true)
  String category;
  List<String> roles;
  @JsonKey(nullable: true)
  List<int> permissions;
  Map<String, List<String>> affiliations;
  String mobile;
  @JsonKey(nullable: true)
  String email;
  @JsonKey(nullable: true)
  String weChat;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;

  User(this.id, this.type, this.name, this.realName, this.roles,
      Map<String, List<String>> affiliations, this.mobile, this.status,
      this.serialNo, this.description,
      {this.password, this.salt, this.avatar, List<String> appTypes,
        List<int> permissions, this.email, this.weChat, this.createTime,
        this.timestamp
      }): (this.affiliations = affiliations ?? );
}