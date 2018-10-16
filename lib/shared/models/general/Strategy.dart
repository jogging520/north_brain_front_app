import 'dart:collection';

import 'package:json_annotation/json_annotation.dart';

part 'Strategy.g.part';

//类名：策略类
@JsonSerializable()
class Strategy {
  String id;
  String type;
  String name;
  @JsonKey(nullable: true)
  String appType;
  @JsonKey(nullable: true)
  String category;
  @JsonKey(nullable: true)
  Map<String, dynamic> parameters;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;

  Strategy(this.id, this.type, this.name, this.status, this.serialNo,
      this.description,
      {this.appType, this.category, Map<String, dynamic> parameters,
        this.createTime, this.timestamp}):
        this.parameters = parameters ?? new HashMap();

  factory Strategy.fromJson(Map<String, dynamic> json) => _$StrategyFromJson(json);
}