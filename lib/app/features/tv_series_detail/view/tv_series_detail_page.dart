import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';

import '../../../../api_call/api_call.dart';

@RoutePage()
class TvSeriesDetailPage extends StatelessWidget {
  final int tvSeriesId;

  const TvSeriesDetailPage({required this.tvSeriesId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TvSeriesDetailBloc(
          remoteDataSource: getIt<RemoteDataSource>(),
          profileBloc: context.read<ProfileBloc>())
        ..add(TvSeriesDetailInitialEvent(tvSeriesId: tvSeriesId)),
      child: Scaffold(
        body: BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case NetworkFetchStatus.loading:
                return const LoadingView();
              case NetworkFetchStatus.success:
                return TvSeriesDetailMainView(
                  tvSeriesDetailModel: state.tvSeriesDetailModel!,
                  creditResponse: state.creditResponse!,
                  videoModelResponse: state.videoModelResponse!,
                );
              case NetworkFetchStatus.error:
                return ErrorView(
                  error: state.errorMessage,
                );
              case NetworkFetchStatus.initial:
                return const LoadingView();
            }
          },
        ),
      ),
    );
  }
}
