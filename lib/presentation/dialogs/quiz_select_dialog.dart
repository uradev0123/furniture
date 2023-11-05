import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture/application/state/quiz/select_list/select_list.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';
import 'package:furniture/domain/types/types.dart';

enum CULTURE {
  scandinavian('北欧'),
  bauhouse('バウハウス'),
  midcentury('ミッドセンチュリー'),
  other('その他');

  const CULTURE(this.displayName);
  final String displayName;

  @override
  String toString() => displayName;
}

class QuizSelectDialog extends ConsumerStatefulWidget {
  const QuizSelectDialog({
    required this.checkIds,
    super.key
  });

  final List<String> checkIds;

  @override
  QuizSelectDialogState createState() => QuizSelectDialogState();
}

class QuizSelectDialogState extends ConsumerState<QuizSelectDialog> {

  @override
  Widget build(BuildContext context) {
    final selectList = ref.watch(selectListNotifierProvider);

    void onChanged(e) {
      setState(() {
        if (widget.checkIds.contains(e)) {
          // すでにチェックされていたら取り除く
          widget.checkIds.remove(e);
        } else {
          // まだチェックされていなければ追加
          widget.checkIds.add(e);
        }
      });
      debugPrint('${widget.checkIds}');
    }

    return Dialog(
      child: Column(
        children: [
          Flexible(
              flex: 9,
              child: CheckBoxListView(
                ids: widget.checkIds,
                onChanged: onChanged,
                values: selectList.when(
                    data: (d) => d,
                    error: (e, s) => ['error'],
                    loading: () => ['loading']
                ),
              )
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonL(
                    text: '決定',
                    onPressed: (){
                      Navigator.pop(context, true); // 絞り込み結果を送る
                    }
                  ),
                  ButtonL(
                      text: '戻る',
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
