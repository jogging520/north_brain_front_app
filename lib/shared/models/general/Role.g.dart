// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) {
  return Role(
      json['id'] as String,
      json['type'] as String,
      json['name'] as String,
      (json['appTypes'] as List)?.map((e) => e as String)?.toList(),
      (json['permissions'] as List)?.map((e) => e as int)?.toList(),
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['status'] as String,
      json['serialNo'] as String,
      description: json['description'] as String)
    ..category = json['category'] as String;
}

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'appTypes': instance.appTypes,
      'category': instance.category,
      'permissions': instance.permissions,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description
    };
