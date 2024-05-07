import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/search/search.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

import '../../core/enums/network_fetch_status.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return BlocProvider(
          create: (context) => SearchBloc(getIt<RemoteDataSource>()),
          child: Scaffold(
            body: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: theme.themeData.primaryColorDark,
                      height: context.heightFactor(.35),
                      width: context.screenSize.width,
                    ),
                    const SearchHeaderView()
                  ],
                ),
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case NetworkFetchStatus.initial:
                        return const _NoResultView();
                      case NetworkFetchStatus.loading:
                        return const LoadingView();
                      case NetworkFetchStatus.success:
                        return state.searchList!.isNotEmpty
                            ? SearchListView(
                                searchResults: state.searchList!,
                              )
                            : const _NoResultView();
                      case NetworkFetchStatus.error:
                        return const _NoResultView();
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _NoResultView extends StatelessWidget {
  const _NoResultView();

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Padding(
          padding: 20.onlyVertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MovieAssets.images.noResult.path,
                width: context.widthFactor(0.8),
              ),
              Text(
                context.localization.search_page_no_result,
                textAlign: TextAlign.center,
                style: theme.searchViewNoResultTextStyle(
                    configuration.searchViewNoResultTextSize),
              )
            ],
          ),
        );
      },
    );
  }
}
