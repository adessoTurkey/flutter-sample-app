import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../responsive/configuration_widget.dart';

class ActorDetailMainView extends StatelessWidget {
  final ActorDetailModel actorDetailModel;

  const ActorDetailMainView({required this.actorDetailModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(
                height: configuration.actorDetailImageHeight,
                width: context.screenSize.width,
                child: ImageContainerView(
                  imageURL: actorDetailModel.profilePath?.toImageUrl??"",
                  placeholderImage: MovieAssets.images.poster1.path,
                ),
              ),
              Padding(
                padding: configuration.actorDetailPagePaddingVertical.symmetric(
                      horizontal:  configuration.actorDetailPagePaddingHorizontal
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(actorDetailModel.name != null)
                    Text(actorDetailModel.name!,
                      style: theme.actorDetailName(configuration.actorDetailNameTextSize),),
                    20.verticalSizedBox,
                    if(actorDetailModel.biography != null && actorDetailModel.biography.isValid)
                    ExpandableText(text: actorDetailModel.biography , maxLines: AppConstants.textShrinkMaxLine),
                    20.verticalSizedBox,
                    if(actorDetailModel.birthday != null && actorDetailModel.placeOfBirth != null)
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        alignment: AlignmentDirectional.centerStart,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(context.localization.actor_detail_info_label,
                              style: theme.actorDetailInfoLabel(configuration.actorDetailInfoLabelTextSize),),
                            if(actorDetailModel.birthday != null)
                            Text(" ${actorDetailModel.birthday!}",
                              style: theme.actorDetailInfo(configuration.actorDetailInfoTextSize),),
                            if(actorDetailModel.placeOfBirth != null)
                            Text(" in ${actorDetailModel.placeOfBirth!}",
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
  }
}