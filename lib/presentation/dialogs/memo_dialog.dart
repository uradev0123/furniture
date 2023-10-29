// BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Memo'),

import 'package:flutter/material.dart';

class MemoDialog extends StatelessWidget {
  MemoDialog({super.key});

  final controller = TextEditingController(text: 'starter text');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // キーボードを表示したときにオーバーフローすることを防ぐ
      child: Dialog(
        child: SizedBox(
          height: 500,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                color: Colors.blue,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('メモ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.multiline,
                  maxLines: 17,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, 'state : cancel');
                        },
                        child: const Text('キャンセル'),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, 'state : ${controller.text}');
                        },
                        child: const Text('OK'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
