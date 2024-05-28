import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class TvSeriesPage extends StatelessWidget {
  const TvSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: BlocBuilder<TvSeriesBloc, TvSeriesState>(
            builder: (context, state) {
              if (state is TvSeriesLoading) {
                return const LoadingView();
              } else if (state is TvSeriesError) {
                return ErrorWidget(
                    state.errorMessage ?? context.localization.fetching_error);
              }
              return Stack(
                children: [
                  Container(
                    color: theme.themeData.primaryColorDark,
                    height: context.screenSize.width,
                    width: context.screenSize.width,
                  ),
                  SafeArea(
                    child: CustomScrollView(
                      scrollBehavior: const ScrollBehavior(),
                      slivers: [
                        CustomScrollViewAppBar(
                          paddingHorizontal:
                              configuration.moviePageListViewPaddingHorizontal,
                          largeTitle: context.localization.tv_series_page_title,
                          largeTitleStyle: theme.mainPageViewHeaderTextStyle(
                            configuration.headerTextSize,
                          ),
                          appBarTitle:
                              context.localization.tv_series_app_bar_title,
                          appBarTitleStyle: theme.mainPageAppBarTitleTextStyle(
                              configuration.mainPageAppBarTitleTextSize),
                          backgroundColor: theme.themeData.primaryColorDark,
                          expandedHeight: configuration
                              .tvSeriesDetailSliverAppBarExpandableHeight,
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              _CarouselView(),
                              Container(
                                color: theme.mainPageBackgroundColor,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: configuration
                                        .tvSeriesListViewPaddingTop,
                                    left: configuration
                                        .tvSeriesListViewPaddingLeft,
                                    right: configuration
                                        .tvSeriesListViewPaddingRight,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _CarouselCardInfoView(),
                                      const Divider(),
                                      16.verticalSizedBox,
                                      Text(
                                        context
                                            .localization.tv_series_top_rated,
                                        style: theme.mainPageListViewTitleTextStyle(
                                            configuration
                                                .mainPageListViewTitleTextSize),
                                      ),
                                      _TvSeriesListView()
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _TvSeriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesBloc, TvSeriesState>(
      buildWhen: (previous, current) {
        return current is TvSeriesSuccess;
      },
      builder: (context, state) {
        if (state is TvSeriesSuccess) {
          return TvSeriesGridView(tvSeriesList: state.tvSeriesList);
        }
        if (state is TvSeriesError) {
          return Center(
            child:
                Text(state.errorMessage ?? context.localization.fetching_error),
          );
        }
        return const LoadingView();
      },
    );
  }
}

class _CarouselCardInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesBloc, TvSeriesState>(
      builder: (context, state) {
        if (state is TvSeriesSuccess) {
          return TvSeriesCarouselCardInfo(
            tvSeries: state.tvSeries,
          );
        }
        if (state is TvCarouselSlideSuccess) {
          return TvSeriesCarouselCardInfo(
            tvSeries: state.tvSeriesModel,
          );
        }
        return Container();
      },
    );
  }
}

class _CarouselView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesBloc, TvSeriesState>(
      buildWhen: (previous, current) {
        return current is TvSeriesSuccess &&
            previous is! TvCarouselSlideSuccess;
      },
      builder: (context, state) {
        if (state is TvSeriesSuccess) {
          return TvSeriesCarouselView(
            tvSeriesList: state.tvSeriesList,
            onPageChanged: (currentIndex) {
              context
                  .read<TvSeriesBloc>()
                  .add(TvCarouselSliding(currentIndex: currentIndex));
            },
          );
        }
        if (state is TvSeriesError) {
          return Center(
            child: Text(context.localization.fetching_error),
          );
        }
        return Container();
      },
    );
  }
}
