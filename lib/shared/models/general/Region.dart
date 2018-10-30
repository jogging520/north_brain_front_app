import 'package:json_annotation/json_annotation.dart';

part 'Region.g.dart';

//类名：区域类
@JsonSerializable()
class Region {
  String id;
  String code;
  String name;
  String type;
  String category;
  String level;
  double longitude;
  double latitude;
  DateTime createTime;
  DateTime timestamp;
  String status;
  String serialNo;
  @JsonKey(nullable: true)
  String description;
  @JsonKey(nullable: true)
  List<Region> children;

  Region(this.id, this.code, this.name, this.type, this.category, this.level,
      this.longitude, this.latitude, this.status, this.serialNo, this.createTime,
      this.timestamp,
      {this.description, List<Region> children}):
        this.children = children ?? <Region>[];

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);
}