import 'package:flutter/material.dart';

class TitleAndText extends StatelessWidget {
  const TitleAndText(
      {super.key,
      required this.title,
      required this.text,
      this.textColor,
      this.textStyle});

  final String title;
  final String text;
  final Color? textColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: textStyle?.copyWith(
                  color: textColor ?? Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold) ??
              Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: textColor ?? Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: SelectableText(
            text,
            style: textStyle?.copyWith(
                    color:
                        textColor ?? Theme.of(context).colorScheme.onSurface) ??
                Theme.of(context).textTheme.bodySmall?.copyWith(
                    color:
                        textColor ?? Theme.of(context).colorScheme.onSurface),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
