// import 'package:furniture/application/state/quiz/state.dart';
// import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
// import 'package:furniture/domain/types/types.dart';
// import 'package:flutter/material.dart';
// import 'package:furniture/presentation/dialogs/my_dialogs.dart';
//
// class NextQuestionUsecase {
//   NextQuestionUsecase({
//     required this.index,
//     required this.list,
//     required this.indexNotifier
//
//   });
//
//   int index;
//   List<Furniture> list;
//   IndexNotifier indexNotifier;
//
//
//
//
//
//   void nextQuestion() {
//     // インデックスを1増加させる
//     final indexNotifier = ref.read(indexNotifierProvider.notifier);
//     indexNotifier.nextIndex();
//     // 問題を更新
//     setCurrentQuestion();
//   }
//
//   bool checkLast(int index, List<Furniture> list) {
//     final lastIndex = list.length - 1;
//     if (index < lastIndex) {
//       return false;
//     }
//     else if (index == lastIndex) {
//       return true;
//     }
//     else {
//       debugPrint('page_quiz.dart CheckLast error インデックスがおかしい');
//       return true;
//     }
//   }
//
// }