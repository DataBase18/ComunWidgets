

import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key, this.child, this.width, this.height, this.radius});
  final Widget? child;
  final double? width;
  final double? height;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 5))
      ),
      child: child,
    );
  }
}
