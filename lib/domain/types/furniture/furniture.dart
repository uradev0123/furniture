import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture/domain/types/types.dart';

part 'furniture.freezed.dart';
part 'furniture.g.dart';

@freezed
class Furniture with _$Furniture {
  // 内部コンストラクタ？よくわからんけどこれを書くとプロパティやメソッドをかけるみたい https://flutter.salon/plugin/freezed/
  const Furniture._();

  const factory Furniture({
    required String enName,
    required String jaName,
    required int designedYear,
    required String type,
    required Designer designer,
    required Brand brand,
    required String imageUrl,
    required String memo,
  }) = _Furniture;

 factory Furniture.fromJson(Map<String, dynamic> json) => _$FurnitureFromJson(json);

 String get details => '$jaName\n${designer.jaName}\n${brand.jaName}\n$designedYear年';
}