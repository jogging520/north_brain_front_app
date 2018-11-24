// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return Policy(json['id'] as String, json['name'] as String,
      json['type'] as String);
}

Map<String, dynamic> _$PolicyToJson(Policy instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type
};
