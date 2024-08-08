import 'package:flutter/material.dart';

class SuraContentItem extends StatelessWidget {
  String verses;
  int index;
  SuraContentItem({required this.verses, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('$verses (${index+1})',
        style: Theme.of(context).textTheme.bodyLarge,
        textDirection: TextDirection.rtl,
      // textAlign: TextAlign.center,
    );
  }
}
