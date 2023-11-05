import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture/presentation/router/app_router.gr.dart';

@RoutePage()
class PageBrandList extends StatelessWidget {
  const PageBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BrandList'),),
      backgroundColor: Colors.green,
      body: Container(),
    );
  }
}
