import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';

class VerticalDividerWidget extends StatelessWidget {
  final double? paddingAll;
  final double dividerHeight;
  final double? dividerWidth;

  const VerticalDividerWidget({
    this.paddingAll,
    required this.dividerHeight,
    this.dividerWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingAll ?? (dividerWidth ?? 2) * 2),
      child: SizedBox(
        height: dividerHeight,
        child: VerticalDivider(
          thickness: dividerWidth ?? 2,
          color: MColors.almostBlack.withOpacity(0.4),
        ),
      ),
    );
  }
}
