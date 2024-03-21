import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///CustomScrollViewAppBar only can be usable inside CustomScrollView
class CustomScrollViewAppBar extends StatelessWidget {
  final String largeTitle;
  final TextStyle largeTitleStyle;
  final String appBarTitle;
  final TextStyle appBarTitleStyle;
  final Color backgroundColor;
  final double expandedHeight;
  final bool implyLeading;

  const CustomScrollViewAppBar({
    required this.largeTitle,
    required this.largeTitleStyle,
    required this.appBarTitle,
    required this.appBarTitleStyle,
    this.backgroundColor = MColors.electricBlue,
    required this.expandedHeight,
    this.implyLeading = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double top;
    return SliverAppBar.large(
      automaticallyImplyLeading: implyLeading,
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
      actions: [
        IconButton(
          onPressed: () {
            context.pushRoute(CinemaMapRoute());
          },
          icon: const Icon(
            FontAwesomeIcons.film,
            color: MColors.white,
          ),
        )
      ],
      backgroundColor: backgroundColor,
      expandedHeight: expandedHeight,
      primary: true,
      pinned: true,
      snap: false,
      floating: false,
    );
  }
}
