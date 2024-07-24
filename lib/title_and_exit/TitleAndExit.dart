import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TitleAndExitConstants.dart';

class TitleAndExit extends StatefulWidget {
  const TitleAndExit({super.key, required this.text,  this.onBack, required this.subText, this.onCopy, this.showCopyIcon=false, this.textToCopy});

  final String text;
  final Function()? onBack;
  final String subText;
  final Function()? onCopy;
  final bool showCopyIcon;
  final String? textToCopy;

  @override
  State<TitleAndExit> createState() => _TitleAndExitState();
}

class _TitleAndExitState extends State<TitleAndExit> {
  @override
  Widget build(BuildContext context) {
    if(widget.textToCopy == null && widget.onCopy == null && widget.showCopyIcon){
      throw Exception([TitleAndExitConstants.error]);
    }
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.text,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: width * 0.01,),
                widget.showCopyIcon?
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: const Icon(Icons.copy, size: 18),
                    onTap: (){
                      if(widget.onCopy!=null){
                        widget.onCopy!();
                      }else{
                        Clipboard.setData(ClipboardData(text: widget.textToCopy!));
                      }
                    },
                  ),
                ):Container()
              ],
            ),
            SelectableText(
              widget.subText,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            )
          ],
        ),
        IconButton(
            onPressed: () {
              if(widget.onBack != null){
                widget.onBack!();
              }else{
                Navigator.pop(context);
              }
            },
            icon: Icon(Icons.dangerous,
                color: Theme.of(context).colorScheme.error))
      ],
    );
  }
}
