import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';

class CustomScrollViewAppBar extends StatelessWidget {
  final String largeTitle;
  final TextStyle largeTitleStyle;
  final String appBarTitle;
  final TextStyle appBarTitleStyle;
  final Color backgroundColor;
  final double expandedHeight;
  final bool implyLeading;
  final List<Widget>? actions;
  final double paddingHorizontal;

  const CustomScrollViewAppBar({
    required this.largeTitle,
    required this.largeTitleStyle,
    required this.appBarTitle,
    required this.appBarTitleStyle,
    this.backgroundColor = MColors.electricBlue,
    this.actions,
    required this.expandedHeight,
    this.implyLeading = true,
    super.key,
    required this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    double top;

    return SliverAppBar(
      automaticallyImplyLeading: implyLeading,
      flexibleSpace: LayoutBuilder(builder: (context, constraints) {
        top = constraints.biggest.height;
        return Row(
          mainAxisAlignment: top < expandedHeight
              ? MainAxisAlignment.center
              : MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 300,
              child: FlexibleSpaceBar(
                titlePadding: 15.symmetric(horizontal: paddingHorizontal),
                centerTitle: top < expandedHeight,
                title: Text(
                  top < expandedHeight ? appBarTitle : largeTitle,
                  style:
                      top < expandedHeight ? appBarTitleStyle : largeTitleStyle,
                ),
              ),
            ),
            if (top >= expandedHeight) const Spacer(),
            if (top >= expandedHeight) ...actions ?? []
          ],
        );
      }),
      backgroundColor: backgroundColor,
      expandedHeight: expandedHeight,
      primary: true,
      pinned: true,
      snap: false,
      floating: false,
    );
  }
}
