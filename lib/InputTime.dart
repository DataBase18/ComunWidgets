



import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  const InputTime(
      {super.key,
        this.labelText,
        this.leftIcon,
        this.placeholderHelp,
        this.rightIcon,
        this.inTextHelper,
        this.downTextHelper,
        this.validator,
        this.onChange,
        this.controller,
        this.isPassword,
        this.enabled,
        this.maxLines = 1,
        this.focus,
        this.autoFocus,
        this.onSubmit,
        this.controllerSelector,
        this.internPadding, this.fontSize, this.keyboard, this.onTabLeftIcon, this.onTabRightIcon, this.readOnly = false, this.onTab});

  final String? labelText;
  final Widget? leftIcon;
  final Function? onTabLeftIcon;
  final String? placeholderHelp;
  final Widget? rightIcon;
  final Function? onTabRightIcon;
  final String? inTextHelper;
  final String? downTextHelper;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final TextEditingController? controller;
  final bool? isPassword;
  final bool? enabled;
  final int? maxLines;
  final bool? autoFocus;
  final Function()? onSubmit;
  final TextSelectionControls? controllerSelector;
  final EdgeInsetsGeometry? internPadding;
  final double? fontSize;
  final TextInputType? keyboard;
  final bool readOnly;
  final Function()? onTab;
  final FocusNode? focus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ,
      keyboardType: keyboard ?? TextInputType.number,
      style: TextStyle(
          fontSize: fontSize
      ),
      onFieldSubmitted: (String data) async {
        if(onSubmit!=null){
          await onSubmit!();
        }
      },
      onTap: onTab,
      selectionControls: controllerSelector,
      autofocus: autoFocus??false,
      maxLines: maxLines,
      enabled: enabled,
      obscureText: isPassword ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      onChanged: onChange,
      validator: validator ,
      focusNode: focus,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: placeholderHelp ?? "HH:mm",
          contentPadding: internPadding,
          suffixIcon: rightIcon!= null?GestureDetector(
            child: SizedBox(
              width: 50,
              child: rightIcon ,
            ),
            onTap:(){
              if(onTabRightIcon!=null){
                onTabRightIcon!();
              }
            },
          ):const Icon(Icons.access_time_filled_outlined),
          prefixIcon: leftIcon!=null? GestureDetector(
            child: SizedBox(width: 50,child: leftIcon,),
            onTap: (){
              if(onTabLeftIcon!=null){
                onTabLeftIcon!();
              }
            },
          ):null
      ),
    );
  }
}