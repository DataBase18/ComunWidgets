


import 'package:flutter/material.dart';

class SimpleComboBox extends StatelessWidget {
  const  SimpleComboBox({super.key, this.onChange, this.items, this.currentValue, this.enabled=true});

  final Function(Object?)? onChange;
  final List<DropdownMenuItem<dynamic>>? items;
  final dynamic currentValue;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: enabled ? Theme.of(context).colorScheme.primary:
                Theme.of(context).colorScheme.surfaceVariant
            ),
            borderRadius: BorderRadius.circular(5)
        ),
        child: DropdownButton(
          style: TextStyle(
            color: enabled ? Theme.of(context).colorScheme.onBackground:
              Theme.of(context).colorScheme.onSurfaceVariant
          ),
          isExpanded: true,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          underline: Container(),
          onChanged: (value){
            if(onChange!=null){
              onChange!(value);
            }
          },
          value: currentValue,
          items: items ,
        ),
      ),
    );
  }
}