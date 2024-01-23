import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/features/home/bloc/navigation_bar_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/movies_page.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        if (state is NavigationBarChangeIndexState) {
          return BottomNavigationBar(
            currentIndex: state.index,
            items: <BottomNavigationBarItem>[
            _NavigationBarItem(
                iconData: Icons.movie,
                iconColor: state.index == 0 ? Colors.blue : Colors.black),
            _NavigationBarItem(
                iconData: Icons.movie,
                iconColor: state.index == 1 ? Colors.blue : Colors.black),
            _NavigationBarItem(
                iconData: Icons.movie,
                iconColor: state.index == 2 ? Colors.blue : Colors.black),
            _NavigationBarItem(
                iconData: Icons.movie,
                iconColor: state.index == 3 ? Colors.blue : Colors.black)
          ],
          onTap: (index){
            context.read<NavigationBarBloc>().add(ChangeNavigationBarIndexEvent(index: index));
          },);
        }
        return Container();
      },

    
      
    ),
    body:  BlocBuilder<NavigationBarBloc,NavigationBarState>(
      builder: (_,state){
        if(state is NavigationBarChangeIndexState){
          return const MoviesPage();
        }

        return Container();
      },
    ));
  }
}

class _NavigationBarItem extends BottomNavigationBarItem {
  final IconData iconData;
  final Color iconColor;
  _NavigationBarItem({required this.iconData, required this.iconColor})
      : super(icon: Icon(iconData, color: iconColor),label:"");
}
