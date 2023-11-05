import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class SelectDialog<T> extends StatefulWidget {
  const SelectDialog({
    required this.checkIds,
    required this.values,
    super.key
  });

  final List<T> checkIds;
  final List<T> values;

  @override
  State<SelectDialog<T>> createState() => _SelectDialogState<T>();
}

class _SelectDialogState<T> extends State<SelectDialog<T>> {

  @override
  Widget build(BuildContext context) {
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
              child: CheckBoxListView<T>(
                ids: widget.checkIds,
                onChanged: onChanged,
                values: widget.values,
              )
          ),
          Flexible(
            flex: 1,
            child: ButtonL(text: '決定', onPressed: () {debugPrint('push');}),
          ),
        ],
      ),
    );
  }
}
