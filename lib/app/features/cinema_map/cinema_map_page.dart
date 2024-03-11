import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class CinemaMapPage extends StatelessWidget {
  CinemaMapPage({super.key});

  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        initialCenter: LatLng(41.044, 29.002),
        initialZoom: 10.0,
      ),
      children: [
        TileLayer(
          wmsOptions: WMSTileLayerOptions(
            baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
            layers: const ['s2cloudless-2021_3857'],
          ),
        ),
        const MarkerLayer(
          markers: <Marker>[
            Marker(
              width: 250.0,
              height: 250.0,
              point: LatLng(41.044, 29.002),
              child: Icon(Icons.pin_drop, color: Colors.red),
            ),
          ],
        )
      ],
    ));
  }
}
