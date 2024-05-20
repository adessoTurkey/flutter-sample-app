import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/app_constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class ExpandableText extends StatefulWidget{
  final String text;
  final int maxLines;
  const ExpandableText({required this.text, required this.maxLines, super.key});

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(onConfigurationReady: (configuration, theme){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: AppConstants.textShrinkExpandAnimationDuration),
            firstChild: Text(
              widget.text,
              maxLines: _isExpanded ? null : widget.maxLines,
              overflow: TextOverflow.ellipsis,
            ),
            secondChild: Text(
              widget.text,
              overflow: TextOverflow.visible,
            ),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
          10.verticalSizedBox,
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? context.localization.actor_detail_shrink_text : context.localization.actor_detail_expand_text,
              style: theme.actorDetailExpandText(configuration.actorDetailExpandTextSize),
            ),
          ),
        ],
      );
    });
  }
}