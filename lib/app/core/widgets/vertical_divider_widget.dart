import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';

class VerticalDividerWidget extends StatelessWidget {
  final double paddingAll;
  final double dividerHeight;
  final double dividerWidth;

  const VerticalDividerWidget({
    required this.paddingAll,
    required this.dividerHeight,
    required this.dividerWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingAll),
      child: SizedBox(
        height: dividerHeight,
        child: VerticalDivider(
          thickness: dividerWidth,
          color: MColors.almostBlack.withOpacity(0.4),
        ),
      ),
    );
  }
}
