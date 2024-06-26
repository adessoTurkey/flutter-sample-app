import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
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
        return IntrinsicHeight(
          child: Container(
            clipBehavior: Clip.hardEdge,
            padding: 20.symmetric(horizontal: 20),
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
                if(place!=null&& place!.websiteUri !=null &&place!.websiteUri!.isNotEmpty)
                Text(
                  place!.websiteUri!,
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
          ),
        );
      },
    );
  }
}
