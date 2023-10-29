// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'designer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DesignerImpl _$$DesignerImplFromJson(Map<String, dynamic> json) =>
    _$DesignerImpl(
      enName: json['enName'] as String,
      jaName: json['jaName'] as String,
      country: json['country'] as String,
      culture: json['culture'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      deathday: json['deathday'] == null
          ? null
          : DateTime.parse(json['deathday'] as String),
      faceUrl: json['faceUrl'] as String,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$DesignerImplToJson(_$DesignerImpl instance) =>
    <String, dynamic>{
      'enName': instance.enName,
      'jaName': instance.jaName,
      'country': instance.country,
      'culture': instance.culture,
      'birthday': instance.birthday.toIso8601String(),
      'deathday': instance.deathday?.toIso8601String(),
      'faceUrl': instance.faceUrl,
      'memo': instance.memo,
    };
