import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double elevation;
  final Color shadowColor;
  final Clip? clip;
  final Color backgroundColor;
  final Widget child;

  const CustomCard({
    super.key,
    required this.elevation,
    required this.shadowColor,
    this.clip,
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      clipBehavior: clip ?? Clip.hardEdge,
      shadowColor: shadowColor,
      surfaceTintColor: backgroundColor,
      child: child,
    );
  }
}
