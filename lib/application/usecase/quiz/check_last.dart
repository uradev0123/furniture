import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';

class CheckLastUsecase {

  bool checkLast(int index, List<Furniture> list) {
    final lastIndex = list.length - 1;
    if(index < lastIndex) { return false; }
    else if(index == lastIndex) { return true; }
    else {
      debugPrint('page_quiz.dart CheckLast error インデックスがおかしい');
      return true;
    }
  }
}