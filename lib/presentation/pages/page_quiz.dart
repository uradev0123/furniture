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

    // ----------------------------------- ステイト -----------------------------------
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

    // ----------------------------------- ボタン -----------------------------------
    final updateButton = ButtonL(
        text: '更新',
        onPressed: () {
          final usecase = UpdateQuestionUsecase(ref: ref);
          usecase.updateQuestion(list!.elementAt(index));
        }
    );

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
      onPressed: () async {
        final checkLast = CheckLastUsecase();
        if(checkLast.checkLast(index, list!)) {
          final isRetry = await showDialog(
            context: context,
            builder: (_) => const QuizEndDialog(),
          );
          // ダイアログを閉じた後
          if(isRetry) {
            // restart();
            final usecase = RestartUsecase(ref: ref);
            usecase.restart(list);
          }
        }
        else {
          final nextQuestion = NextQuestionUsecase(ref: ref);
          nextQuestion.nextQuestion(list);
        }
      },
    );

    // ----------------------------------- ページ -----------------------------------
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        updateButton,
        image,
        isQuestion ? TestText('この家具は何でしょう？') : detailsText,
        isQuestion ? answerButton : nextButton,
      ],
    );
  }
}
