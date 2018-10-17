// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storage _$StorageFromJson(Map<String, dynamic> json) {
  return Storage(
      json['id'] as String,
      json['type'] as String,
      json['name'] as String,
      json['category'] as String,
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['status'] as String,
      json['serialNo'] as String,
      description: json['description'] as String);
}

Map<String, dynamic> _$StorageToJson(Storage instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'category': instance.category,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description
    };
