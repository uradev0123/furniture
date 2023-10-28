import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageQuiz extends StatelessWidget {
  const PageQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz'),),
      backgroundColor: Colors.yellow,
      body: Container(),
    );
  }
}
