// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      json['id'] as String,
      json['type'] as String,
      json['name'] as String,
      json['realName'] as String,
      (json['appTypes'] as List)?.map((e) => e as String)?.toList(),
      json['category'] as String,
      (json['roles'] as List)?.map((e) => e as String)?.toList(),
      (json['affiliations'] as Map<String, dynamic>)?.map((k, e) =>
          MapEntry(k, (e as List)?.map((e) => e as String)?.toList())),
      json['createTime'] == null
          ? null
          : DateTime.parse(json['createTime'] as String),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['status'] as String,
      json['serialNo'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      avatar: json['avatar'] as String,
      permissions:
          (json['permissions'] as List)?.map((e) => e as int)?.toList(),
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      weChat: json['weChat'] as String,
      description: json['description'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'password': instance.password,
      'salt': instance.salt,
      'realName': instance.realName,
      'avatar': instance.avatar,
      'appTypes': instance.appTypes,
      'category': instance.category,
      'roles': instance.roles,
      'permissions': instance.permissions,
      'affiliations': instance.affiliations,
      'mobile': instance.mobile,
      'email': instance.email,
      'weChat': instance.weChat,
      'createTime': instance.createTime?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'serialNo': instance.serialNo,
      'description': instance.description
    };
