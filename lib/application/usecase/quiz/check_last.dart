import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';

class CheckLastUsecase {
  CheckLastUsecase({required this.index, required this.list});

  int index;
  List<Furniture> list;

  bool checkLast() {
    final lastIndex = list.length - 1;
    if(index < lastIndex) { return false; }
    else if(index == lastIndex) { return true; }
    else {
      debugPrint('page_quiz.dart CheckLast error インデックスがおかしい');
      return true;
    }
  }
}