import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';
import '../../../../responsive/configuration_widget.dart';

class DetailPageCastItem extends StatelessWidget {
  final CastResults cast;

  const DetailPageCastItem({Key? key, required this.cast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if(cast.profilePath != null)
              SizedBox(
                width: configuration.tvSeriesDetailCastImageSize,
                height: configuration.tvSeriesDetailCastImageSize,
                child: CircleAvatar(
                  radius: configuration.tvSeriesDetailCastImageRadius,
                  backgroundImage: NetworkImage(cast.profilePath!.toImageUrl),
                ),
              ),
              8.verticalSizedBox,
              if(cast.originalName != null)
              Text(
                cast.originalName!,
                style: theme.tvSeriesDetailCastNameTextStyle(
                  configuration.tvSeriesDetailCastNameTextSize
                ),
              ),
            ],
          );
        });
  }
}