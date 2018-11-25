// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trade _$TradeFromJson(Map<String, dynamic> json) {
  return Trade(json['id'] as String, json['name'] as String,
      json['type'] as String, json['price'] as double);
}

Map<String, dynamic> _$TradeToJson(Trade instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'price': instance.price
};
