import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/cinema_map/bloc/cinema_map_bloc.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'cinema_map.dart';
import 'models/response/place_response_model/place_response_model.dart';
import 'views/map_info_view.dart';

@RoutePage()
class CinemaMapPage extends StatefulWidget {
  const CinemaMapPage({super.key});

  @override
  State<CinemaMapPage> createState() => _CinemaMapPageState();
}

class _CinemaMapPageState extends State<CinemaMapPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CinemaMapBloc(getIt<RemoteDataSource>())
        ..add(
          CinemaFetching(),
        ),
      child: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Scaffold(
            backgroundColor: theme.primaryColorLight,
            body: SafeArea(
              child: Column(
                children: [
                  const CinemaMapHeaderView(),
                  BlocBuilder<CinemaMapBloc, CinemaMapState>(
                    buildWhen: (previous, current) =>
                        previous.initialCameraPosition !=
                        current.initialCameraPosition,
                    builder: (context, state) {
                      switch (state.status) {
                        case CinemaMapStatusX.initial:
                          return const LoadingView();
                        case CinemaMapStatusX.loading:
                          return const LoadingView();
                        case CinemaMapStatusX.success:
                          return _CinemaMapSuccessView(
                            state: state,
                          );
                        case CinemaMapStatusX.error:
                          return const LoadingView();
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CinemaMapSuccessView extends StatelessWidget {
  final CinemaMapState state;
  const _CinemaMapSuccessView({
    required this.state,
  });

  Set<Marker>? getMarkers(
      List<PlaceResponseModel>? places, BuildContext context) {
    return places?.map((e) {
      return Marker(
        markerId: MarkerId(e.displayName?.text ?? ""),
        position: LatLng(
          e.location?.latitude ?? 0,
          e.location?.longitude ?? 0,
        ),
        infoWindow: InfoWindow(title: e.displayName?.text ?? ""),
        onTap: () {
          context.read<CinemaMapBloc>().add(MapMarkTapped(placeModel: e));
        },
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (controller) => context.read<CinemaMapBloc>().add(
                    MapInitialize(controller: controller),
                  ),
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                target:
                    state.initialCameraPosition, // San Francisco coordinates
                zoom: 12,
              ),
              markers: getMarkers(state.places, context) ?? {},
            ),
          ),
          MapInfoView()
        ],
      ),
    );
  }
}
