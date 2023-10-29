// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      enName: json['enName'] as String,
      jaName: json['jaName'] as String,
      country: json['country'] as String,
      foundedYear: json['foundedYear'] as int,
      bankruptcyYear: json['bankruptcyYear'] as int?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'enName': instance.enName,
      'jaName': instance.jaName,
      'country': instance.country,
      'foundedYear': instance.foundedYear,
      'bankruptcyYear': instance.bankruptcyYear,
    };
