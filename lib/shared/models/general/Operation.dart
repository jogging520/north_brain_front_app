import 'package:json_annotation/json_annotation.dart';

part 'Operation.g.dart';

//
@JsonSerializable()
class Operation {
  String id;
  String type;
  @JsonKey(nullable: true)
  String appType;
  @JsonKey(nullable: true)
  String category;
  @JsonKey(nullable: true)
  String user;
  @JsonKey(nullable: true)
  String session;
  @JsonKey(nullable: true)
  String businessType;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String description;
  @JsonKey(nullable: true)
  List<Operation> children;

  Operation(this.id, this.type, this.status, this.description,
    {this.appType, this.category, this.user, this.session, this.businessType,
    this.createTime, this.timestamp, List<Operation> children}): this.children = children ?? <Operation>[];

  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);
}
