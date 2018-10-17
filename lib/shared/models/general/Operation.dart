import 'package:json_annotation/json_annotation.dart';

part 'Operation.g.dart';

//类名：操作记录类
//用途：用于业务工单的记录
@JsonSerializable()
class Operation {
  String id;
  String type;
  String appType;
  String category;
  String user;
  String session;
  String businessType;
  DateTime createTime;
  DateTime timestamp;
  String status;
  @JsonKey(nullable: true)
  String description;
  @JsonKey(nullable: true)
  List<Operation> children;

  Operation(this.id, this.type, this.appType, this.category, this.user,
      this.session, this.businessType, this.createTime, this.timestamp,
      this.status, {this.description, List<Operation> children}):
        this.children = children ?? <Operation>[];

  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);
}
