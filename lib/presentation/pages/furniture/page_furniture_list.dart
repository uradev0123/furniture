import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/router/app_router.gr.dart';

@RoutePage()
class PageFurnitureList extends StatelessWidget {
  const PageFurnitureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FurnitureList'),),
      backgroundColor: Colors.pink,
      body: Container(),
    );
  }
}
