// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operation _$OperationFromJson(Map<String, dynamic> json) {
  return Operation(json['id'] as String, json['type'] as String,
      json['status'] as String, json['description'] as String,
      appType: json['appType'] as String,
      category: json['category'] as String,
      user: json['user'] as String,
      session: json['session'] as String,
      businessType: json['businessType'] as String,
      createTime: json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      children: (json['children'] as List)
          ?.map((e) =>
              e == null ? null : Operation.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OperationToJson(Operation instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'appType': instance.appType,
      'category': instance.category,
      'user': instance.user,
      'session': instance.session,
      'businessType': instance.businessType,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'description': instance.description,
      'children': instance.children
    };
