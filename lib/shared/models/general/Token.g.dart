// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
      json['session'] as String,
      json['user'] as String,
      json['lifeTime'] as int,
      json['jwt'] as String,
      json['downPublicKey'] as String,
      json['upPrivateKey'] as String,
      json['status'] as String);
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'session': instance.session,
      'user': instance.user,
      'lifeTime': instance.lifeTime,
      'jwt': instance.jwt,
      'downPublicKey': instance.downPublicKey,
      'upPrivateKey': instance.upPrivateKey,
      'status': instance.status
    };
