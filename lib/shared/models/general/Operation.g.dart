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
      createTime: json['createTime'] as String,
      timestamp: json['timestamp'] as String,
      children: (json['children'] as List)
          ?.map((e) =>
              e == null ? null : Operation.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OperationToJson(Operation instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('appType', instance.appType);
  writeNotNull('category', instance.category);
  writeNotNull('user', instance.user);
  writeNotNull('session', instance.session);
  writeNotNull('businessType', instance.businessType);
  writeNotNull('createTime', instance.createTime);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('status', instance.status);
  writeNotNull('description', instance.description);
  writeNotNull('children', instance.children);
  return val;
}
