// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Strategy _$StrategyFromJson(Map<String, dynamic> json) {
  return Strategy(
      json['id'] as String,
      json['type'] as String,
      json['name'] as String,
      json['appType'] as String,
      json['category'] as String,
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['status'] as String,
      json['serialNo'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
      description: json['description'] as String);
}

Map<String, dynamic> _$StrategyToJson(Strategy instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'appType': instance.appType,
      'category': instance.category,
      'parameters': instance.parameters,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description
    };
