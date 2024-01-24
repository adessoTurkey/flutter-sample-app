import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
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
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              items: <BottomNavigationBarItem>[
                _NavigationBarItem(
                    iconData: FontAwesomeIcons.film,
                    iconColor: _navigationItemColor(tabsRouter.activeIndex, 0)),
                _NavigationBarItem(
                    iconData: FontAwesomeIcons.tv,
                    iconColor: _navigationItemColor(tabsRouter.activeIndex, 1)),
                _NavigationBarItem(
                    iconData: FontAwesomeIcons.magnifyingGlass,
                    iconColor: _navigationItemColor(tabsRouter.activeIndex, 2)),
                _NavigationBarItem(
                    iconData: FontAwesomeIcons.user,
                    iconColor: _navigationItemColor(tabsRouter.activeIndex, 3))
              ],
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
            ),
            body: child);
      },
    );
  }

  Color _navigationItemColor(int selectedIndex, int itemIndex) {
    return selectedIndex == itemIndex
        ? MColors.navigationSelectedItem
        : MColors.navigationUnselectedItem;
  }
}

class _NavigationBarItem extends BottomNavigationBarItem {
  final IconData iconData;
  final Color iconColor;
  _NavigationBarItem({required this.iconData, required this.iconColor})
      : super(icon: Icon(iconData, color: iconColor), label: "");
}
