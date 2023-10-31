import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';

class FinishUsecase {
  FinishUsecase({
    required this.list,
    required this.ref,
  });

  List<Furniture> list;
  WidgetRef ref;

  void restart() {
    // インデックスを0に戻す
    final iNoti = ref.read(indexNotifierProvider.notifier);
    iNoti.resetState();
    // 問題を更新
    final usecase = UpdateQuestionUsecase(ref: ref,);
  }

  // void finish() async {
  //   final isRetry = await showDialog(
  //     context: context,
  //     builder: (_) => QuizEndDialog(),
  //   );
  //   // ダイアログを閉じた後
  //   if (isRetry) {
  //     restart();
  //   }
  // }
}
