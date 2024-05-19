import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/actor/model/crew_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class DetailCrewLabelSection extends StatelessWidget {
  final String title;
  final TextStyle titleTextStyle;
  final List<CrewModel> info;
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
            Text(
              "$title: ",
              style: titleTextStyle,
            ),
            Flexible(
                child: CastLabelWidget(
                  textStyle: infoTextStyle,
                  itemList: info,
                )),
          ],
        );
      },
    );
  }
}
