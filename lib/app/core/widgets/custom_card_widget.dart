import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double elevation;
  final Color shadowColor;
  final Clip? clip;
  final ShapeBorder? shapeBorder;
  final Color backgroundColor;
  final Widget child;

  const CustomCard({
    super.key,
    required this.elevation,
    required this.shadowColor,
    this.clip,
    required this.backgroundColor,
    required this.child,
    this.shapeBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      clipBehavior: clip ?? Clip.hardEdge,
      shape: shapeBorder,
      shadowColor: shadowColor,
      color: backgroundColor,

      child: child,
    );
  }
}
