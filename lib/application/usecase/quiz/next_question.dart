import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';

class NextQuestionUsecase {
  NextQuestionUsecase({
    required this.indexNotifier,
    required this.detailsNotifier,
    required this.imageNotifier,
    required this.isQuestionNotifier,
  });
  
  IndexNotifier indexNotifier;
  DetailsNotifier detailsNotifier;
  ImageNotifier imageNotifier;
  IsQuestionNotifier isQuestionNotifier;
  
  
  void nextQuestion() {
    indexNotifier.nextIndex();
    final usecase = UpdateQuestionUsecase(
        detailsNotifier: detailsNotifier, 
        imageNotifier: imageNotifier, 
        isQuestionNotifier: isQuestionNotifier
    );

  }
}