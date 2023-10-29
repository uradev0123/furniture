import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required String enName,
    required String jaName,
    required String country,
    required int foundedYear,
    int? bankruptcyYear,
  }) = _Brand;

 factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}