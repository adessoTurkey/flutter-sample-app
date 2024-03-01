import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';

///CustomScrollViewAppBar only can be usable inside CustomScrollView
class CustomScrollViewAppBar extends StatelessWidget {
  final String largeTitle;
  final TextStyle largeTitleStyle;
  final String appBarTitle;
  final TextStyle appBarTitleStyle;
  final Color backgroundColor;
  final double expandedHeight;

  const CustomScrollViewAppBar({
    required this.largeTitle,
    required this.largeTitleStyle,
    required this.appBarTitle,
    required this.appBarTitleStyle,
    this.backgroundColor = MColors.electricBlue,
    required this.expandedHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double top;
    return SliverAppBar.large(
      flexibleSpace: LayoutBuilder(builder: (context, constraints) {
        top = constraints.biggest.height;
        return FlexibleSpaceBar(
          titlePadding: 10.symmetric(horizontal: 20),
          centerTitle: top < expandedHeight ? true : false,
          title: Text(
            top < expandedHeight ? appBarTitle : largeTitle,
            style: top < expandedHeight ? null : largeTitleStyle,
          ),
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