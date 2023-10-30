import 'package:furniture/application/state/quiz/state.dart';

class IncreaseIndexUsecase {
  IncreaseIndexUsecase({required this.notifier});

  IndexNotifier notifier;

  void increaseIndex() {
    notifier.nextIndex();
  }
}