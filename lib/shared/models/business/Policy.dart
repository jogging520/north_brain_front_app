
import 'package:json_annotation/json_annotation.dart';

part 'Policy.g.dart';

@JsonSerializable()
class Policy {
  String id;
  String name;
  String type;

  Policy(this.id, this.name, this.type);

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);

  Map<String, dynamic> toJson() => _$PolicyToJson(this);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ type.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Policy &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              type == other.type;
}