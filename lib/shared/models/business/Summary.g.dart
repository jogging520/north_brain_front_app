// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return Summary(json['id'] as String, json['name'] as String,
      json['type'] as String);
}

Map<String, dynamic> _$SummaryToJson(Summary instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type
};
