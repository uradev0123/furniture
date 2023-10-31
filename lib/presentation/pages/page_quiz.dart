import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/check_last.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';
import 'package:furniture/presentation/theme/images.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';

@RoutePage()
class PageQuiz extends ConsumerWidget {
  const PageQuiz({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)  {

    final index = ref.watch(indexNotifierProvider);
    final isQuestion = ref.watch(isQuestionNotifierProvider);

    final listState = ref.watch(listNotifierProvider);
    final list = listState.when(
      data: (d) => d,
      error: (e, s) => null,
      loading: () => null,
    );

    final details = ref.watch(detailsNotifierProvider);
    final detailsText = TestText(details);

    final imageState = ref.watch(imageNotifierProvider);
    final image = imageState.when(
        data: (d) => ImageL(d),
        error: (e, s) => ImageL(Images.error),
        loading: () => ImageL(Images.loading),
    );

    void restart(){
      // インデックスを0に戻す
      final indexNotifier = ref.read(indexNotifierProvider.notifier);
      indexNotifier.resetState();
      // 問題を更新
      final updateQuestion = UpdateQuestionUsecase(ref: ref);
      updateQuestion.updateQuestion(list!.elementAt(index));
    }

    void finish() async {
      final isRetry = await showDialog(
        context: context,
        builder: (_) => QuizEndDialog(),
      );
      // ダイアログを閉じた後
      if(isRetry) {
        restart();
      }
    }

    final answerButton = ButtonL(
      text: '答え',
      onPressed: () {
        final notifier = ref.read(isQuestionNotifierProvider.notifier);
        final showAnswer = ShowAnswerUsecase(notifier: notifier);
        showAnswer.showAnswer();
      },
    );
    final nextButton = ButtonL(
      text: '次へ',
      onPressed: () {
        final checkLast = CheckLastUsecase();
        if(checkLast.checkLast(index, list!)){
          finish();
        }
        else {
          final nextQuestion = NextQuestionUsecase(ref: ref);
          nextQuestion.nextQuestion(list);
        }
      },
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        image,
        isQuestion ? TestText('この家具は何でしょう？') : detailsText,
        isQuestion ? answerButton : nextButton,
      ],
    );
  }
}
