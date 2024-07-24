import 'package:flutter/material.dart';

import 'ButtonsConstants.dart';

class GlobalColorButton extends StatelessWidget {
  const GlobalColorButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      required this.onClick,
      required this.loading});

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function() onClick;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        if (!loading) {
          onClick();
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      child: loading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 15,
                    height: 15,
                    child: CircularProgressIndicator(
                      backgroundColor: textColor,
                      color: backgroundColor,
                      strokeWidth: 3.0,
                    )
                ),
                const SizedBox(width: 10),
                Text(
                  ButtonsConstants.loading,
                  style: TextStyle(color: textColor),
                )
              ],
            )
          : Text(
              text,
              style: TextStyle(color: textColor),
            ),
    );
  }
}
