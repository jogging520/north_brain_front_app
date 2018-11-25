
import 'package:json_annotation/json_annotation.dart';

part 'Summary.g.dart';

@JsonSerializable()
class Summary {
  String id;
  String name;
  String type;

  Summary(this.id, this.name, this.type);

  factory Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryToJson(this);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ type.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Summary &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              type == other.type;
}