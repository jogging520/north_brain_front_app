
import 'package:json_annotation/json_annotation.dart';

part 'Trade.g.dart';

@JsonSerializable()
class Trade {
  String id;
  String name;
  String type;
  double price;

  Trade(this.id, this.name, this.type, this.price);

  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);

  Map<String, dynamic> toJson() => _$TradeToJson(this);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ type.hashCode ^ price.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Trade &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              type == other.type &&
              price == other.price;
}