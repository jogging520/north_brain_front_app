// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return Menu(
      backgroundImage: json['backgroundImage'] as String,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      avatarType: _$enumDecodeNullable(_$AvatarTypeEnumMap, json['avatarType']),
      avatar: json['avatar'] as String,
      navigator: json['navigator'] as String);
}

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'backgroundImage': instance.backgroundImage,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'avatarType': _$AvatarTypeEnumMap[instance.avatarType],
      'avatar': instance.avatar,
      'navigator': instance.navigator
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$AvatarTypeEnumMap = <AvatarType, dynamic>{
  AvatarType.icon: 'icon',
  AvatarType.text: 'text'
};
