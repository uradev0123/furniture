import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';
import 'package:furniture/presentation/theme/images.dart';
import 'package:furniture/domain/types/types.dart';

@RoutePage()
class PageQuiz extends ConsumerWidget {
  const PageQuiz({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)  {

    final index = ref.watch(indexNotifierProvider);
    final isQuestion = ref.watch(isQuestionNotifierProvider);

    final details = ref.watch(detailsNotifierProvider);
    final detailsText = TestText(details);

    final listState = ref.watch(listNotifierProvider);
    final list = listState.when(
        data: (d) => d,
        error: (e, s) => null,
        loading: () => null,
    );

    final imageState = ref.watch(imageNotifierProvider);
    final image = imageState.when(
        data: (d) => d,
        error: (e, s) => Images.error,
        loading: () => Images.loading,
    );

    void showAnswer() {
      final notifier = ref.read(isQuestionNotifierProvider.notifier);
      notifier.updateState(false);
    }

    bool checkLast(int index, List<Furniture> list) {
      final lastIndex = list.length - 1;
      if(index < lastIndex) { return false; }
      else if(index == lastIndex) { return true; }
      else {
        debugPrint('page_quiz.dart CheckLast error インデックスがおかしい');
        return true;
      }
    }

    void setCurrentQuestion() {
      // 詳細テキストを変更
      final detailsNotifier = ref.read(detailsNotifierProvider.notifier);
      detailsNotifier.updateState(list!.elementAt(index));
      // 画像を変更
      final imageNotifier = ref.read(imageNotifierProvider.notifier);
      imageNotifier.updateState(list!.elementAt(index).imageUrl);
      // 画面状態を問題中に変更
      final isQuestionNotifier = ref.read(isQuestionNotifierProvider.notifier);
      isQuestionNotifier.updateState(true);
    }

    void nextQuestion() {
      // インデックスを1増加させる
      final indexNotifier = ref.read(indexNotifierProvider.notifier);
      indexNotifier.nextIndex();
      // 問題を更新
      setCurrentQuestion();
    }

    void restart(){
      // インデックスを0に戻す
      final indexNotifier = ref.read(indexNotifierProvider.notifier);
      indexNotifier.resetState();
      // 問題を更新
      setCurrentQuestion();
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
        showAnswer();
      },
    );
    final nextButton = ButtonL(
      text: '次へ',
      onPressed: () {
        if( checkLast(index, list!) ){
          finish();
        }
        else {
          nextQuestion();
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
