import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class DetailCrewLabelSection extends StatelessWidget {
  final String title;
  final TextStyle titleTextStyle;
  final String info;
  final TextStyle infoTextStyle;

  const DetailCrewLabelSection({super.key,
  required this.title,
  required this.titleTextStyle,
  required this.info,
  required this.infoTextStyle});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Row(
          children: [
            CastLabelWidget(
              textStyle: titleTextStyle,
              title: "$title: ",
            ),
            Flexible(
                child: CastLabelWidget(
                  textStyle: infoTextStyle,
                  title: info,
                )),
          ],
        );
      },
    );
  }
}
