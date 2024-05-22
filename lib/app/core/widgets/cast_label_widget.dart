import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/features/actor/model/crew_model.dart';

class CastLabelWidget extends StatelessWidget {
  final TextStyle textStyle;
  final List<CrewModel> itemList;
  final int maxLines;
  final TextOverflow textOverFlow;

  const CastLabelWidget(
      {required this.textStyle,
      required this.itemList,
      this.maxLines = 1,
      this.textOverFlow = TextOverflow.ellipsis,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        String fullText = itemList.map((item) => item.name).join(', ');
        TextPainter textPainter = TextPainter(
          text: TextSpan(text: fullText, style: textStyle),
          maxLines: 1,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        if (textPainter.didExceedMaxLines) {
          for (int i = itemList.length - 1; i >= 0; i--) {
            String testText = itemList.sublist(0, i).map((item) => item.name).join(', ');
            textPainter.text = TextSpan(text: testText, style: textStyle);
            textPainter.layout(maxWidth: constraints.maxWidth);

            if (!textPainter.didExceedMaxLines) {
              fullText = testText;
              break;
            }
          }
        }

        return Text.rich(
          TextSpan(
            children: _buildItemSpans(context, fullText),
          ),
          maxLines: 1,
          overflow: textOverFlow,
        );
      },
    );
  }

  List<InlineSpan> _buildItemSpans(BuildContext context, String text) {
    List<InlineSpan> spans = [];
    int lastIndex = 0;

    for (CrewModel item in itemList) {
      int index = text.indexOf(item.name!, lastIndex);
      if (index == -1) break;

      if (lastIndex != index) {
        spans.add(TextSpan(text: text.substring(lastIndex, index)));
      }

      spans.add(
        WidgetSpan(
          child: GestureDetector(
            onTap: () => {
              if(item.id != null){
                context.pushRoute(ActorDetailRoute(actorId: item.id!))
              }
            },
            child: Text(
              item.name??"",
              style: textStyle,
            ),
          ),
        ),
      );

      lastIndex = index + item.name!.length;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }

    return spans;
  }
}
