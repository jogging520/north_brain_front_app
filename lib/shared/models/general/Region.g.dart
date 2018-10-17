// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Region _$RegionFromJson(Map<String, dynamic> json) {
  return Region(
      json['id'] as String,
      json['code'] as String,
      json['name'] as String,
      json['type'] as String,
      json['category'] as String,
      json['level'] as String,
      (json['longitude'] as num)?.toDouble(),
      (json['latitude'] as num)?.toDouble(),
      json['status'] as String,
      json['serialNo'] as String,
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      description: json['description'] as String,
      children: (json['children'] as List)
          ?.map((e) =>
              e == null ? null : Region.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'category': instance.category,
      'level': instance.level,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description,
      'children': instance.children
    };
