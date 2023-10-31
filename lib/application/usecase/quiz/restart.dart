import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';

class RestartUsecase {
  RestartUsecase({
    required this.ref,
  });

  WidgetRef ref;

  void restart(List<Furniture> list) {
    // インデックスを0に戻す
    final iNoti = ref.read(indexNotifierProvider.notifier);
    iNoti.resetState();
    // 問題を更新
    final index = ref.read(indexNotifierProvider);
    final usecase = UpdateQuestionUsecase(ref: ref);
    usecase.updateQuestion(list.elementAt(index));
  }
}
