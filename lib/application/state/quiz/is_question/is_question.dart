import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'is_question.g.dart';

@riverpod
class IsQuestionNotifier extends _$IsQuestionNotifier {
  @override
  bool build() {
    return true;
  }

  void updateState(bool newState) {
    state = newState;
  }
}