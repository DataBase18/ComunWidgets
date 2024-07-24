import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumberBasic extends StatelessWidget {
  const InputNumberBasic(
      {super.key,
      required this.controller,
      required this.labelText,
      this.autoFocus = false,
      this.focusNode, this.onSubmit});

  final TextEditingController controller;
  final String labelText;
  final bool autoFocus;
  final FocusNode? focusNode;
  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText, border: const OutlineInputBorder()),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      autofocus: autoFocus,
      focusNode: focusNode,
      onSubmitted: (String value){
        onSubmit?.call();
      },
    );
  }
}
