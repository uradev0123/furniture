import 'package:flutter/material.dart';

class TestText extends StatelessWidget {
  TestText(this.text, {super.key});

  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      // 4行まではきちんと表示されてそれ以上はあふれる → スペースに合わせた文字の大きさある？
      child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 25), ),
    );
  }
}