import 'package:flutter/material.dart';

class CheckBoxListView extends StatelessWidget {
  const CheckBoxListView({
    required this.ids,
    required this.onChanged,
    required this.values,
    super.key
  });

  final List<String> ids;
  final List<String> values;
  final void Function(String id) onChanged;

  @override
  Widget build(BuildContext context) {
    final checkTiles = values.map((e) {
      return CheckboxListTile(
        title: Text(e),
        value: ids.contains(e),
        onChanged: (check) => onChanged(e),
      );
    }).toList();

    return ListView(
      children: checkTiles,
    );
  }
}

