

import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicWidth(
          child: Row(
            children: [
              const Icon(Icons.info),
              SizedBox(width: width*0.01,),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
