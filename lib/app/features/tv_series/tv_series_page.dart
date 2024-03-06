import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series/bloc/tv_series_bloc.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_carousel_card_info.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_carousel_view.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_list_view.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class TvSeriesPage extends StatelessWidget {
  const TvSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: Stack(
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
                      largeTitle: context.localization.tv_series_page_title,
                      largeTitleStyle: theme.moviesViewHeaderTextStyle(
                        configuration.headerTextSize,
                      ),
                      appBarTitle:
                      context.localization.movies_page_app_bar_title,
                      appBarTitleStyle: theme.tvSeriesAppBarTitleTextStyle(
                          configuration.tvSeriesAppBarTitleTextSize),
                      backgroundColor: theme.themeData.primaryColorDark,
                      expandedHeight:
                      configuration.tvSeriesDetailSliverAppBarExpandableHeight,
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          _CarouselView(),
                          Container(
                            color: theme.themeData.scaffoldBackgroundColor,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: configuration.tvSeriesListViewPaddingTop,
                                left: configuration.tvSeriesListViewPaddingLeft,
                                right:
                                configuration.tvSeriesListViewPaddingRight,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _CarouselCardInfoView(),
                                  const Divider(),
                                  16.verticalSizedBox,
                                  Text(
                                    context
                                        .localization.tv_series_top_rated,
                                    style: theme.moviesPageListViewTitleTextStyle(
                                        configuration
                                            .tvSeriesListViewTitleTextSize),
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
        if (state is TvSeriesLoading) {
          return const LoadingView();
        }
        if (state is TvSeriesSuccess) {
          return SizedBox(
            child: TvSeriesListView(tvSeriesList: state.tvSeriesList),
          );
        }
        if (state is TvSeriesError) {
          return Center(
            child: Text(state.errorMessage ?? context.localization.fetching_error),
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
        if (state is CarouselSlideSuccess) {
          return TvSeriesCarouselCardInfo(
            tvSeries: state.tvSeriesModel,
          );
        }
        return const LoadingView();
      },
    );
  }
}

class _CarouselView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesBloc, TvSeriesState>(
      buildWhen: (previous, current) {
        return current is TvSeriesSuccess && previous is! CarouselSlideSuccess;
      },
      builder: (context, state) {
        if (state is TvSeriesLoading) {
          return const LoadingView();
        }
        if (state is TvSeriesSuccess) {
          return TvSeriesCarouselView(
            tvSeriesList: state.tvSeriesList,
            onPageChanged: (currentIndex) {
              context
                  .read<TvSeriesBloc>()
                  .add(CarouselSliding(currentIndex: currentIndex));
            },
          );
        }
        if (state is TvSeriesError) {
          return Center(
            child: Text(state.errorMessage ?? context.localization.fetching_error),
          );
        }
        return const LoadingView();
      },
    );
  }
}
