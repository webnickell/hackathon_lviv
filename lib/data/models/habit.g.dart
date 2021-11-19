// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitResponse _$HabitResponseFromJson(Map<String, dynamic> json) =>
    HabitResponse(
      name: json['name'] as String,
      description: json['description'] as String,
      id: json['id'] as String?,
      type: $enumDecode(_$HabitTypeEnumMap, json['type']),
      designType: $enumDecode(_$DesignTypeEnumMap, json['designType']),
    );

Map<String, dynamic> _$HabitResponseToJson(HabitResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$HabitTypeEnumMap[instance.type],
      'designType': _$DesignTypeEnumMap[instance.designType],
    };

const _$HabitTypeEnumMap = {
  HabitType.useful: 0,
  HabitType.useless: 1,
};

const _$DesignTypeEnumMap = {
  DesignType.first: 0,
  DesignType.second: 1,
  DesignType.third: 2,
};
