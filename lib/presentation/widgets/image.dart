import 'package:flutter/material.dart';

class ImageL extends StatelessWidget {
  ImageL(this.image, {super.key});

  Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: image,
    );
  }
}



