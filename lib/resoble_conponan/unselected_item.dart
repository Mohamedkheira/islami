import 'package:flutter/material.dart';

class UnselectedItem extends StatelessWidget {
  String value;
  UnselectedItem({required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
