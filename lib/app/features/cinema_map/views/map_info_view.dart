import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/cinema_map/cinema_map.dart';

import '../../../core/widgets/widgets.dart';
import '../bloc/cinema_map_bloc.dart';

class MapInfoView extends StatelessWidget {
  const MapInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CinemaMapBloc, CinemaMapState>(
      buildWhen: (previous, current) =>
          previous.selectedPlace != current.selectedPlace,
      builder: (context, state) {
        switch (state.status) {
          case CinemaMapStatusX.initial:
            return const LoadingView();
          case CinemaMapStatusX.loading:
            return const LoadingView();
          case CinemaMapStatusX.success:
            return state.selectedPlace != null
                ? Padding(
                    padding: 30.symmetric(horizontal: 30),
                    child: MapInfoWindowWidget(
                      place: state.selectedPlace,
                    ),
                  )
                : Container();
          case CinemaMapStatusX.error:
            return const LoadingView();
        }
      },
    );
  }
}
