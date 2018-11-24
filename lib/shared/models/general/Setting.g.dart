// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return Setting(user: json['user'] as String, dark: json['dark'] as bool);
}

Map<String, dynamic> _$SettingToJson(Setting instance) =>
    <String, dynamic>{'user': instance.user, 'dark': instance.dark};
