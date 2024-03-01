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
                  ],
                ),
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state is SearchInitial) {
                      return const _NoResultView();
                    }
                    if (state is SearchLoading) {
                      return const LoadingView();
                    }
                    if (state is SearchSuccess) {
                      return SearchListView(
                        searchResults: state.searchResults,
                      );
                    }
                    if (state is SearchEmpty) {
                      return const _NoResultView();
                    }
                    return const LoadingView();
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
