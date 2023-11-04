import 'package:flutter/material.dart';

class RadioButtonRow extends StatelessWidget {
  const RadioButtonRow({
    required this.id,
    required this.onChanged,
    required this.values,
    super.key
  });

  final dynamic id;
  final List<dynamic> values;
  final void Function(dynamic value) onChanged;

  @override
  Widget build(BuildContext context) {
    final radioTiles = values.map((e) {
      return Expanded(
        child: RadioListTile(
          groupValue: id,
          title: Text('$e'),
          value: e,
          onChanged: onChanged,
        ),
      );
    }).toList();

    return Row(
      children: radioTiles,
    );
  }
}

class RadioButtonColumn extends StatelessWidget {
  const RadioButtonColumn({
    required this.id,
    required this.onChanged,
    required this.values,
    super.key
  });

  final dynamic id;
  final List<dynamic> values;
  final void Function(dynamic value) onChanged;

  @override
  Widget build(BuildContext context) {
    final radioTiles = values.map((e) {
      return RadioListTile(
        groupValue: id,
        title: Text('$e'),
        value: e,
        onChanged: onChanged,
      );
    }).toList();

    return Column(
      children: radioTiles,
    );
  }
}

