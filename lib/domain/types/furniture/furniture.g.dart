// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FurnitureImpl _$$FurnitureImplFromJson(Map<String, dynamic> json) =>
    _$FurnitureImpl(
      enName: json['enName'] as String,
      jaName: json['jaName'] as String,
      designedYear: json['designedYear'] as int,
      type: json['type'] as String,
      designer: Designer.fromJson(json['designer'] as Map<String, dynamic>),
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$FurnitureImplToJson(_$FurnitureImpl instance) =>
    <String, dynamic>{
      'enName': instance.enName,
      'jaName': instance.jaName,
      'designedYear': instance.designedYear,
      'type': instance.type,
      'designer': instance.designer,
      'brand': instance.brand,
      'imageUrl': instance.imageUrl,
      'memo': instance.memo,
    };
