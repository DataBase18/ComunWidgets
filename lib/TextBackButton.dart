
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBackButton extends StatelessWidget {
  const TextBackButton({super.key, required this.title, this.fontSize = 15,  this.bold = true});

  final String title;
  final double? fontSize;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackButton(),
        const SizedBox(width: 10,),
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal
          ),
        )
      ],
    );
  }
}
