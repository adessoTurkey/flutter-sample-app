import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //Movie Image
                  Container(
                    height: 400,
                    color: Colors.amber,
                  ),
                  topRow()
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    movieInfoLabelSection(),
                    movieRatingAndSharingSection(),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      style: theme.movieDetailDescriptionTextStyle(
                          configuration.movieDetailDescriptionTextSize),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    movieDetailCastLabel("Director", "Ali Eren Gedikoğlu"),
                    movieDetailCastLabel("Writers", "Ali Eren Gedikoğlu"),
                    movieDetailCastLabel("Stars", "Ali Eren Gedikoğlu"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }

  Widget movieRatingAndSharingSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DurationView(durationTime: 144),
        SizedBox(
          height: 20,
        ),
        RateView(),
        SizedBox(
          height: 20,
        ),
        Divider(),
      ],
    );
  }

  Widget movieInfoLabelSection() {
    return const Wrap(
      spacing: 12,
      children: [
        Text("Joker"),
      ],
    );
  }

  Widget topRow() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularButtonWidget(
              radiusSize: 30,
              onTap: () {},
              iconData: FontAwesomeIcons.arrowLeft,
              backgroundColor: Colors.transparent,
              iconColor: Colors.white,
            ),
            CircularButtonWidget(
              radiusSize: 30,
              onTap: () {},
              iconData: FontAwesomeIcons.heart,
              backgroundColor: Colors.white,
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget movieDetailCastLabel(String title, String info) {
    return Row(
      children: [
        Text(
          "$title: ",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
