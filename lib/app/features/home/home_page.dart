import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MoviesRoute(),
        TvSeriesRoute(),
        SearchRoute(),
        ProfileRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: MColors.black25,
                      blurRadius: HomeConstants.bottomNavigationBlurRadius,
                      offset: HomeConstants.bottomNavigationShadowOffset),
                ],
              ),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                items: <BottomNavigationBarItem>[
                  _NavigationBarItem(
                    iconData: FontAwesomeIcons.film,
                  ),
                  _NavigationBarItem(
                    iconData: FontAwesomeIcons.tv,
                  ),
                  _NavigationBarItem(
                    iconData: FontAwesomeIcons.magnifyingGlass,
                  ),
                  _NavigationBarItem(
                    iconData: FontAwesomeIcons.user,
                  )
                ],
                onTap: (index) {
                  tabsRouter.setActiveIndex(index);
                },
              ),
            ),
            body: child);
      },
    );
  }
}

class _NavigationBarItem extends BottomNavigationBarItem {
  final IconData iconData;
  _NavigationBarItem({required this.iconData})
      : super(icon: Icon(iconData), label: "");
}
