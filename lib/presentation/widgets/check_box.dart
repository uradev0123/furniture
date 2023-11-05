import 'package:flutter/material.dart';

class CheckBoxListView<T> extends StatelessWidget {
  const CheckBoxListView({
    required this.ids,
    required this.onChanged,
    required this.values,
    super.key
  });

  final List<T> ids;
  final List<T> values;
  final void Function(T id) onChanged;

  @override
  Widget build(BuildContext context) {
    final checkTiles = values.map((e) {
      return CheckboxListTile(
        title: Text('$e'),
        value: ids.contains(e),
        onChanged: (c) => onChanged(e),
      );
    }).toList();

    return ListView(
      children: checkTiles,
    );
  }
}

