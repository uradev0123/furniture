import 'package:flutter/material.dart';
import 'package:furniture/infrastructure/firebase/storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'image.g.dart';

@riverpod
class ImageNotifier extends _$ImageNotifier {
  @override
  Future<Image> build() async {
    // 3秒まつ
    const sec1 = Duration(seconds: 1);
    await Future.delayed(sec1);

    return Image.network('https://user0514.cdnw.net/shared/img/thumb/shikunDJI_0096-NR233_TP_V.jpg');
  }

  Future<void> updateState(String path) async {
    state = const AsyncValue.loading();

    // 画像を取得
    final service = StorageService();
    final image = await service.getImage(path);

    // データを上書き
    state = AsyncValue.data(image);
  }
}