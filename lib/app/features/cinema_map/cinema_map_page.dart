import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/features/cinema_map/bloc/cinema_map_bloc.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class CinemaMapPage extends StatelessWidget {
  CinemaMapPage({super.key});

  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CinemaMapBloc(getIt<RemoteDataSource>())
        ..add(
          const CinemaFetching(),
        ),
      child: Scaffold(
        body: BlocBuilder<CinemaMapBloc, CinemaMapState>(
          builder: (context, state) {
            return FlutterMap(
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
            );
          },
        ),
      ),
    );
  }
}
