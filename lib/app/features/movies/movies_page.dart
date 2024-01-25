import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  top: 24.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MoviesCarouselCardInfoView(),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 500, child: MovieListView(list: _list))
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
