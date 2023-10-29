import 'package:flutter/material.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'image.g.dart';

@riverpod
class ImageNotifier extends _$ImageNotifier {
  @override
  Future<Image> build() async {
    const sec3 = Duration(seconds: 3);
    await Future.delayed(sec3);
    return Image.network('https://user0514.cdnw.net/shared/img/thumb/shikunDJI_0096-NR233_TP_V.jpg');
  }

  void updateState(Furniture f){
    final url = f.imageUrl;

    // ストレージから画像を取得する
  }
}