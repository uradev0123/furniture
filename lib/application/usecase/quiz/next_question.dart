import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';

class NextQuestionUsecase {
  NextQuestionUsecase({
    required this.ref,
  });

  WidgetRef ref;
  
  void nextQuestion(List<Furniture> list) {
    final iNoti = ref.watch(indexNotifierProvider.notifier);
    iNoti.nextIndex();
    final usecase = UpdateQuestionUsecase(ref: ref,);
    final index = ref.read(indexNotifierProvider);
    usecase.updateQuestion(list.elementAt(index));
  }
}