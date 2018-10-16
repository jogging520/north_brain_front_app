
import 'package:json_annotation/json_annotation.dart';

part 'Storage.g.part';

//类名：存储类
@JsonSerializable()
class Storage {
  String id;
  String type;
  String name;
  @JsonKey(nullable: true)
  String category;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;

  Storage(this.id, this.type, this.name, this.status, this.serialNo
      , this.description,
      {this.category, this.createTime, this.timestamp});

  factory Storage.fromJson(Map<String, dynamic> json) => _$StorageFromJson(json);
}