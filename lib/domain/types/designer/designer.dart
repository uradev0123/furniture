import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'designer.freezed.dart';
part 'designer.g.dart';

@freezed
class Designer with _$Designer {
  const Designer._();

  const factory Designer({
    required String enName,
    required String jaName,
    required String country,
    required String culture,
    required DateTime birthday,
    DateTime? deathday,
    required String faceUrl,
    required String memo,
  }) = _Designer;

 factory Designer.fromJson(Map<String, dynamic> json) => _$DesignerFromJson(json);

 String get period => '${birthday.year} - ${deathday?.year ?? ''}';
 String get details => '$jaName\n$enName\n生没年：$period\n出身地：$country';

  static Designer designerFromMap(Map<String, dynamic> map) {
    String enName = map["enName"];
    String jaName = map["jaName"];
    String country = map["country"];
    String culture = map["culture"];
    DateTime birthday = map["birthday"].toDate();
    DateTime deathday = map["deathday"].toDate();
    String faceUrl = map["faceUrl"];
    String memo = map["memo"];

    return Designer(
      enName: enName,
      jaName: jaName,
      country: country,
      culture: culture,
      birthday: birthday,
      deathday: deathday,
      faceUrl: faceUrl,
      memo: memo,
    );
  }

}