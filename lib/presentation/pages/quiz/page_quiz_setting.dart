import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/application/usecase/quiz/check_last.dart';
import 'package:furniture/infrastructure/firebase/firestore_service.dart';
import 'package:furniture/presentation/router/app_router.gr.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';
import 'package:furniture/presentation/dialogs/my_dialogs.dart';
import 'package:furniture/presentation/theme/images.dart';
import 'package:furniture/domain/types/types.dart';
import 'package:furniture/application/usecase/quiz/quiz_usecase.dart';

enum GENRE {
  all('全て'),
  designer('デザイナー'),
  brand('ブランド'),
  culture('文化');

  final String displayName;
  const GENRE(this.displayName);

  @override
  String toString() => displayName;
}


@RoutePage()
class PageQuizSetting extends ConsumerStatefulWidget {
  const PageQuizSetting({super.key});

  @override
  PageQuizSettingState createState() => PageQuizSettingState();
}

class PageQuizSettingState extends ConsumerState<PageQuizSetting>{

  int numRadioId = 10;  // ラジオボタンのデフォルト選択
  GENRE genreRadioId = GENRE.all;
  List<String> querySelectedIds = [];

  @override
  Widget build(BuildContext context)  { // ConsumerStateの場合,refは引数で取らないが持っている

    final selectList = ref.watch(selectListNotifierProvider);

    // --------------------------- ラジオボタン変更メソッド ------------------------
    void onChangedNumRadio(dynamic id) {
      setState(() {
        numRadioId = id;
      });
    }
    void onChangedGenreRadio(dynamic id) {
      setState(() {
        genreRadioId = id;
      });
    }

    // --------------------------- メソッド ------------------------
    // void pushQuizPage() {
    //   context.navigateTo(const RouteQuiz());
    // }

    // --------------------------- ボタン ------------------------
    final decideButton = ButtonL(
      text: '決定',
      onPressed: () async {
        final noti = ref.watch(selectListNotifierProvider.notifier);
        noti.updateState(genreRadioId);

        final query = await showDialog(
            context: context,
            builder: (_) => QuizSelectDialog(checkIds: querySelectedIds),
        );

        if(query != null) {
          // queryを使ってDBからデータを取得
        }
      }
    );

    // ----------------------------------- ページ -----------------------------------
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('問題数'),
            RadioButtonRow(
              id: numRadioId,
              onChanged: onChangedNumRadio,
              values: const [10, 30, 50],
            ),
            const Text('絞り込み'),
            RadioButtonColumn(
              id: genreRadioId,
              onChanged: onChangedGenreRadio,
              values: GENRE.values,
            ),
            decideButton,
          ],
        ),
      ),
    );
  }
}
