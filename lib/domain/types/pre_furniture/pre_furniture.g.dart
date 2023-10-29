// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_furniture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreFurnitureImpl _$$PreFurnitureImplFromJson(Map<String, dynamic> json) =>
    _$PreFurnitureImpl(
      enName: json['enName'] as String,
      jaName: json['jaName'] as String,
      designedYear: json['designedYear'] as int,
      type: json['type'] as String,
      designerId: json['designerId'] as String,
      brandId: json['brandId'] as String,
      imageUrl: json['imageUrl'] as String,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$PreFurnitureImplToJson(_$PreFurnitureImpl instance) =>
    <String, dynamic>{
      'enName': instance.enName,
      'jaName': instance.jaName,
      'designedYear': instance.designedYear,
      'type': instance.type,
      'designerId': instance.designerId,
      'brandId': instance.brandId,
      'imageUrl': instance.imageUrl,
      'memo': instance.memo,
    };
