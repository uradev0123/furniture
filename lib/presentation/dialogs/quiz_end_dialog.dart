import 'package:flutter/material.dart';
import 'package:furniture/presentation/widgets/my_widgets.dart';

class QuizEndDialog extends StatelessWidget {
  const QuizEndDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
        title: const Text('問題は以上です'),
        actions: [
          TextButtonM(
            text: 'キャンセル',
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),

          TextButtonM(
            text: '最初から',
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ],
    );
  }
}
