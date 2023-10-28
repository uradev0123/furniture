import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/application/state/quiz/index/index.dart';


@RoutePage()
class PageQuiz extends ConsumerWidget {
  const PageQuiz({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch, listenはbuild(ref)直下で使う
    final index = ref.watch(indexNotifierProvider);

    // S1 listen
    ref.listen(
      indexNotifierProvider,
          (oldState, newState) {
        // スナックバーを表示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$oldStateから$newStateへ変更されました'),
          ),
        );
      },
    );

    final indexText = Text('$index');
    final indexButton = ElevatedButton(
      onPressed: () {
        // indexノティファイアを呼ぶ（build(ref)から更にネストしたスコープの場合はwatch, listenではなくreadを使う）
        final notifier = ref.read(indexNotifierProvider.notifier);
        // indexデータを変更
        notifier.updateState();
      },
      child: const Text('+1'),
    );

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        indexText,
        indexButton,
      ],
    );
  }
}
