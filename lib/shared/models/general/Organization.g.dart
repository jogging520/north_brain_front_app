// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization(
      json['id'] as String,
      json['code'] as String,
      json['name'] as String,
      json['type'] as String,
      json['category'] as String,
      json['region'] as String,
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['status'] as String,
      json['serialNo'] as String,
      parent: json['parent'] as String,
      description: json['description'] as String,
      children: (json['children'] as List)
          ?.map((e) => e == null
              ? null
              : Organization.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'category': instance.category,
      'region': instance.region,
      'parent': instance.parent,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description,
      'children': instance.children
    };
