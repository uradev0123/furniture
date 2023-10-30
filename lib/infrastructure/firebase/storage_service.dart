import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/theme/images.dart';

class StorageService {

  Future<Image> getImage(String path) async {

    final storageRef = FirebaseStorage.instance.ref();
    final pathReference = storageRef.child(path);

    try {
      // ストレージから画像を取得しImageクラスに変換して返す
      const oneMegabyte = 1024 * 1024;  // 1MBの制限
      final Uint8List? data = await pathReference.getData(oneMegabyte);
      return Image.memory(data!);
    } on FirebaseException catch (e) {
      // エラー時にエラーの画像を返す
      return Images.error;
    }
  }

}