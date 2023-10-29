import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';
import 'package:furniture/presentation/theme/images.dart';

@RoutePage()
class PageQuiz extends ConsumerWidget {
  const PageQuiz({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)  {

    final index = ref.watch(indexNotifierProvider);
    final isQuestion = ref.watch(isQuestionNotifierProvider);

    final details = ref.watch(detailsNotifierProvider);
    final detailsText = TestText(details);

    final list = ref.watch(listNotifierProvider);

    final imageState = ref.watch(imageNotifierProvider);
    final image = imageState.when(
        data: (d) => d,
        error: (e, s) => Images.error,
        loading: () => Images.loading,
    );

    final answerButton = ButtonL(
      text: '答え',
      onPressed: () async {
        final isRetry = await showDialog(
          context: context,
          builder: (_) => QuizEndDialog(),
        );
        // ダイアログを閉じた後
        if(isRetry) {
          // service.update();
        }
      },
    );
    final nextButton = ButtonL(
      text: '次へ',
      onPressed: () {},
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        image,
        detailsText,
        answerButton,
      ],
    );
  }
}
