import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/cinema_map/cinema_map.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/place_response_model/place_response_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MapInfoWindowWidget extends StatelessWidget {
  final PlaceResponseModel? place;
  const MapInfoWindowWidget({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          padding: 20.symmetric(horizontal: 20),
          height: context.heightFactor(0.21),
          decoration: BoxDecoration(
            color: MColors.white,
            borderRadius: BorderRadius.circular(
              context.widthFactor(0.04),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place?.displayName?.text ?? "",
                style: theme.mapInfoViewDisplayNameTextStyle(
                  configuration.mapInfoViewDisplayNameTextSize,
                ),
              ),
              Text(
                place?.formattedAddress ?? "",
                maxLines: 1,
                style: theme.mapInfoViewAddressTextStyle(
                  configuration.mapInfoViewAddressTextSize,
                ),
              ),
              Text(
                place?.websiteUri ?? "",
                style: theme.mapInfoViewWebSiteTextStyle(
                  configuration.mapInfoViewWebSiteTextSize,
                ),
                maxLines: 1,
              ),
              const Divider(),
              MapInfoGoButton(
                place: place,
              ),
            ],
          ),
        );
      },
    );
  }
}
