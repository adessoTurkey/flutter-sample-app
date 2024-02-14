import 'package:flutter/material.dart';

class CastLabelWidget extends StatelessWidget {
  final TextStyle textStyle;
  final String title;
  final int maxLines;
  final TextOverflow textOverFlow;

  const CastLabelWidget(
      {required this.textStyle,
      required this.title,
      this.maxLines = 1,
      this.textOverFlow = TextOverflow.ellipsis,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      softWrap: false,
      style: textStyle,
      maxLines: maxLines,
      overflow: textOverFlow,
    );
  }
}
