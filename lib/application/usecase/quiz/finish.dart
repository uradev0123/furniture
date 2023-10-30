// import 'package:furniture/application/state/quiz/state.dart';
// import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
// import 'package:furniture/domain/types/types.dart';
// import 'package:flutter/material.dart';
// import 'package:furniture/presentation/dialogs/my_dialogs.dart';
//
// class FinishUsecase {
//   FinishUsecase({
//     required this.index,
//     required this.list,
//     required this.indexNotifier,
//     required this.detailsNotifier,
//     required this.imageNotifier,
//     required this.isQuestionNotifier,
//   });
//
//   int index;
//   List<Furniture> list;
//   IndexNotifier indexNotifier;
//   DetailsNotifier detailsNotifier;
//   ImageNotifier imageNotifier;
//   IsQuestionNotifier isQuestionNotifier;
//
//   void restart() {
//     // インデックスを0に戻す
//     indexNotifier.resetState();
//     // 問題を更新
//     final usecase = UpdateQuestionUsecase(
//         // currentFurniture: currentFurniture,
//         detailsNotifier: detailsNotifier,
//         imageNotifier: imageNotifier,
//         isQuestionNotifier: isQuestionNotifier
//     );
//   }
//
//   void finish() async {
//     final isRetry = await showDialog(
//       context: context,
//       builder: (_) => QuizEndDialog(),
//     );
//     // ダイアログを閉じた後
//     if (isRetry) {
//       restart();
//     }
//   }
// }
