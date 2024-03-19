import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/place_response_model/place_response_model.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/constants.dart';
import 'package:map_launcher/map_launcher.dart';

class MapInfoGoButton extends StatelessWidget {
  final PlaceResponseModel? place;
  const MapInfoGoButton({super.key, this.place});

  openMapsSheet(BuildContext context) async {
    try {
      final List<AvailableMap> availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  for (AvailableMap map in availableMaps)
                    ListTile(
                      onTap: () => map.showDirections(
                        destination: Coords(
                          place?.location?.latitude ?? 0,
                          place?.location?.longitude ?? 0,
                        ),
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => openMapsSheet(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            context.widthFactor(20),
          ),
          color: MColors.electricBlue,
        ),
        padding: 6.onlyVertical,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.locationArrow,
              color: MColors.white,
            ),
            4.horizontalSizedBox,
            Text(
              context.localization.cinema_map_info_view_go_button_title,
              style: const TextStyle(
                color: MColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
