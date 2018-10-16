import 'package:json_annotation/json_annotation.dart';

part 'Region.g.part';

//类名：区域类
@JsonSerializable()
class Region {
  String id;
  String code;
  String name;
  String type;
  @JsonKey(nullable: true)
  String category;
  String level;
  double longitude;
  double latitude;
  @JsonKey(nullable: true)
  DateTime createTime;
  @JsonKey(nullable: true)
  DateTime timestamp;
  String status;
  String serialNo;
  String description;
  @JsonKey(nullable: true)
  List<Region> children;

  Region(this.id, this.code, this.name, this.type, this.level,
      this.longitude, this.latitude, this.status, this.serialNo, this.description,
      {this.category, this.createTime, this.timestamp, List<Region> children}
      ): this.children = children ?? <Region>[];

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}