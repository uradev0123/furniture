import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'designer.freezed.dart';
part 'designer.g.dart';

@freezed
class Designer with _$Designer {
  const factory Designer({
    required String enName,
    required String jaName,
    required String country,
    required String culture,
    required DateTime birthday,
    required DateTime deathday,
    required String faceUrl,
    required String memo,
  }) = _Designer;

 factory Designer.fromJson(Map<String, dynamic> json) => _$DesignerFromJson(json);
}