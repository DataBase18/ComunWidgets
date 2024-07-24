

import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.text, this.fontSize=30});
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface
    ),);
  }
}
