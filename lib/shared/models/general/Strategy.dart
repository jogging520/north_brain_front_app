import 'dart:collection';

import 'package:json_annotation/json_annotation.dart';

part 'Strategy.g.dart';

//类名：策略类
@JsonSerializable()
class Strategy {
  String id;
  String type;
  String name;
  String appType;
  String category;
  @JsonKey(nullable: true)
  Map<String, dynamic> parameters;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;

  Strategy(this.id, this.type, this.name, this.appType, this.category,
      this.createTime, this.timestamp, this.status, this.serialNo,
      {Map<String, dynamic> parameters, this.description}):
        this.parameters = parameters ?? new HashMap();

  factory Strategy.fromJson(Map<String, dynamic> json) => _$StrategyFromJson(json);
}