
import 'package:json_annotation/json_annotation.dart';

part 'Storage.g.dart';

//类名：存储类
@JsonSerializable()
class Storage {
  String id;
  String type;
  String name;
  String category;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;

  Storage(this.id, this.type, this.name, this.category, this.createTime,
      this.timestamp, this.status, this.serialNo, {this.description});

  factory Storage.fromJson(Map<String, dynamic> json) => _$StorageFromJson(json);
}