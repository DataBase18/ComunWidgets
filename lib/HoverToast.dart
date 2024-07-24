
import 'package:flutter/material.dart';

class HoverToast extends StatelessWidget {
  const HoverToast({super.key, required this.message, required this.child});

  final String message;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      waitDuration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      message: message,
      child: child
    );
  }
}
