import 'package:flutter/material.dart';

class CastLabelWidget extends StatelessWidget {
  final TextStyle textStyle;
  final String title;
  final int? maxLines;
  final TextOverflow? textOverFlow;
  final bool isTitle;

  const CastLabelWidget(
      {required this.textStyle,
      required this.title,
      this.maxLines,
      this.textOverFlow,
      required this.isTitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      isTitle ? "$title: " : title,
      softWrap: false,
      style: textStyle,
      maxLines: maxLines ?? 1,
      overflow: textOverFlow ?? TextOverflow.ellipsis,
    );
  }
}
