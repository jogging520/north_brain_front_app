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
      json['downPublicKeyExponent'] as String,
      json['downPublicKeyModulus'] as String,
      json['upPrivateKeyExponent'] as String,
      json['upPrivateKeyModulus'] as String,
      json['upPrivateKeyPrimeP'] as String,
      json['upPrivateKeyPrimeQ'] as String,
      json['status'] as String,
      downPublicKey: json['downPublicKey'] as String,
      upPrivateKey: json['upPrivateKey'] as String);
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'session': instance.session,
      'user': instance.user,
      'lifeTime': instance.lifeTime,
      'jwt': instance.jwt,
      'downPublicKey': instance.downPublicKey,
      'downPublicKeyExponent': instance.downPublicKeyExponent,
      'downPublicKeyModulus': instance.downPublicKeyModulus,
      'upPrivateKey': instance.upPrivateKey,
      'upPrivateKeyExponent': instance.upPrivateKeyExponent,
      'upPrivateKeyModulus': instance.upPrivateKeyModulus,
      'upPrivateKeyPrimeP': instance.upPrivateKeyPrimeP,
      'upPrivateKeyPrimeQ': instance.upPrivateKeyPrimeQ,
      'status': instance.status
    };
