import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPageImageSection extends StatefulWidget {
  const MovieDetailPageImageSection({super.key});

  @override
  State<MovieDetailPageImageSection> createState() =>
      _MovieDetailPageImageSectionState();
}

class _MovieDetailPageImageSectionState
    extends State<MovieDetailPageImageSection> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Stack(
          children: [
            //Movie Image
            Container(
              height: configuration.movieDetailImageHeight,
              color: Colors.amber,
            ),
            topRow(context, configuration.movieDetailTopRowPaddingAll)
          ],
        );
      },
    );
  }

  Widget topRow(BuildContext context, double padding) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularButtonWidget(
              onTap: () {
                context.popRoute();
              },
              iconData: FontAwesomeIcons.arrowLeft,
              backgroundColor: Colors.transparent,
              iconColor: Colors.white,
            ),
            CircularButtonWidget(
              onTap: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
              iconData: _isFavorite
                  ? FontAwesomeIcons.solidHeart
                  : FontAwesomeIcons.heart,
              backgroundColor: Colors.white,
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
