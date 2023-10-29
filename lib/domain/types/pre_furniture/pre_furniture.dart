import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_furniture.freezed.dart';
part 'pre_furniture.g.dart';

@freezed
class PreFurniture with _$PreFurniture {
  const factory PreFurniture({
    required String enName,
    required String jaName,
    required int designedYear,
    required String type,
    required String designerId,
    required String brandId,
    required String imageUrl,
    required String memo,
  }) = _PreFurniture;

 factory PreFurniture.fromJson(Map<String, dynamic> json) => _$PreFurnitureFromJson(json);
}