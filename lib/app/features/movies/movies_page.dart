import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  var currentPage = 0;
  static final List<String> _list = [
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.electricBlue,
      body: SafeArea(
        child: ListView(
          children: [
            MoviesCarouselView(
              imageList: _list,
              onPageChanged: (currentIndex) {
                setState(() {
                  currentPage = currentIndex;
                });
              },
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: MoviesConstants.moviePageListViewPaddingTop,
                  left: MoviesConstants.moviePageListViewPaddingLeft,
                  right: MoviesConstants.moviePageListViewPaddingRight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MoviesCarouselCardInfoView(),
                    const Divider(),
                    SizedBox(
                      height:
                          (WidgetsConstants.movieCellHeight + 25) * _list.length,
                      child: MovieListView(list: _list),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
