
import 'package:json_annotation/json_annotation.dart';

part 'Product.g.dart';

@JsonSerializable()
class Product {
  String id;
  String name;
  String type;
  int width;
  int height;

  Product(this.id, this.name, this.type, this.width, this.height);

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ type.hashCode ^ width.hashCode ^ height.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Product &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              type == other.type &&
              width == other.width &&
              height == other.height;
}