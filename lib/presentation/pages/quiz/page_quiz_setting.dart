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
import '../../../infrastructure/firebase/data_path.dart';

@RoutePage()
class PageQuizSetting extends ConsumerStatefulWidget {
  const PageQuizSetting({super.key});

  @override
  PageQuizSettingState createState() => PageQuizSettingState();
}

class PageQuizSettingState extends ConsumerState<PageQuizSetting>{

  int numRadioId = 10;  // ラジオボタンのデフォルト選択
  GENRE genreRadioId = GENRE.all;
  // List<String> querySelectedIds = [];

  @override
  Widget build(BuildContext context)  { // ConsumerStateの場合,refは引数で取らないが持っている

    // final selectList = ref.watch(selectListNotifierProvider);

    // --------------------------- メソッド ------------------------
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
    String getProperty(GENRE genre) {
      final property = switch(genre) {
        GENRE.all => 'all',
        GENRE.designer => FurnitureProperty.designerId,
        GENRE.brand => FurnitureProperty.brandId,
        GENRE.culture => 'culture',
      };

      return property;
    }

    // --------------------------- ボタン ------------------------
    final decideButton = ButtonL(
      text: '決定',
      onPressed: () async {
        final noti = ref.read(selectListNotifierProvider.notifier);
        noti.updateState(genreRadioId);

        final ids = await showDialog<List<String>>(
            context: context,
            builder: (_) => QuizSelectDialog(
              genre: genreRadioId,
            ),
        );
        if(ids!.isNotEmpty) {
          final query = DbQuery(
              collection: Collection.furniture,
              property: getProperty(genreRadioId),
              target: ids.first,
              limit: numRadioId,
          );
          debugPrint('query = ');
          debugPrint('$query');

          final service = FirestoreService();
          final fList = await service.readFurnitureList(query);
          debugPrint('debug furniture list from DB');
          debugPrint('$fList');
          final listNoti = ref.read(listNotifierProvider.notifier);
          listNoti.updateState(fList);
          context.navigateTo(RouteQuiz());
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
