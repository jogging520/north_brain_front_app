
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
}