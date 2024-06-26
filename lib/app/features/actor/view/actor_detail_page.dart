import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

import '../../../../api_call/api_repositories/remote_data_source.dart';
import '../../../../di/dependency_injection.dart';

@RoutePage()
class ActorDetailPage extends StatelessWidget {
  final int actorId;

  const ActorDetailPage(
      {required this.actorId, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration,theme) {
        return BlocProvider(
          create: (context) =>
          ActorDetailBloc(remoteDataSource: getIt<RemoteDataSource>())
            ..add(ActorDetailInitialEvent(actorId: actorId)),
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: AppbarBackButton(
                iconColor: theme.appbarBackButtonColor,
                onPressed: () {
                  context.popRoute();
                }),),
            body: BlocBuilder<ActorDetailBloc, ActorDetailState>(
              builder: (context, state) {
                switch (state.status) {
                  case NetworkFetchStatus.loading:
                    return const LoadingView();
                  case NetworkFetchStatus.success:
                    return ActorDetailMainView(
                        actorDetailModel: state.actorDetailModel!);
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
      },
    );
  }
}
