import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/actor_detail_model_extension.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/actor/bloc/actor_detail_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import '../../../api_call/api_repositories/remote_data_source.dart';
import '../../../di/dependency_injection.dart';
import '../../../gen/assets.gen.dart';
import '../../../responsive/configuration_widget.dart';
import '../../core/widgets/error_view.dart';
import '../../core/widgets/image_container_view.dart';
import '../../core/widgets/loading_view.dart';

@RoutePage()
class ActorDetailPage extends StatelessWidget{
  final int actorId;
  const ActorDetailPage({required this.actorId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      ActorDetailBloc(remoteDataSource: getIt<RemoteDataSource>())
        ..add(ActorDetailInitialEvent(actorId: actorId)),
      child: Scaffold(
        body: BlocBuilder<ActorDetailBloc, ActorDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case ActorDetailStatus.loading:
                return const LoadingView();
              case ActorDetailStatus.success:
                return ConfigurationWidget(
                  onConfigurationReady: (configuration, theme) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: configuration.actorDetailImageHeight,
                            width: context.screenSize.width,
                            child: ImageContainerView(
                              imageURL: state.actorDetailModel?.getImageURL ?? "",
                              placeholderImage: MovieAssets.images.poster1.path,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: configuration
                                  .actorDetailPagePaddingHorizontal,
                              vertical:
                              configuration.actorDetailPagePaddingVertical,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.actorDetailModel?.name ?? "",
                                  style: theme.actorDetailName(configuration.actorDetailNameTextSize),),
                                20.verticalSizedBox,
                                Text(state.actorDetailModel?.biography ?? "",
                                  style: theme.actorDetailBiography(configuration.actorDetailBiographyTextSize),),
                                20.verticalSizedBox,
                                Text(context.localization.actor_detail_expand_text,
                                  style: theme.actorDetailExpandText(configuration.actorDetailExpandTextSize),),
                                20.verticalSizedBox,
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(context.localization.actor_detail_info_label,
                                          style: theme.actorDetailInfoLabel(configuration.actorDetailInfoLabelTextSize),),
                                        Text(state.actorDetailModel?.getBornInfo ?? "",
                                          style: theme.actorDetailInfo(configuration.actorDetailInfoTextSize),)
                                      ],
                                    )
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              case ActorDetailStatus.error:
                return ErrorView(
                  error: state.errorMessage,
                );
              case ActorDetailStatus.initial:
                return const LoadingView();
            }
          },
        ),
      ),
    );
  }
}