import 'package:flutter/material.dart';

class ButtonL extends StatelessWidget {
  ButtonL({required this.text, required this.onPressed, super.key});

  String text;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 130,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

class ButtonM extends StatelessWidget {
  ButtonM({required this.text, required this.onPressed, super.key});

  String text;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

class TextButtonM extends StatelessWidget {
  TextButtonM({required this.text, required this.onPressed, super.key});

  String text;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
