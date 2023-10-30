import 'package:furniture/application/state/quiz/state.dart';

class ShowAnswerUsecase {
  ShowAnswerUsecase({required this.notifier});

  IsQuestionNotifier notifier;

  void showAnswer() {
    notifier.updateState(false);
  }
}