import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReleaseDateView extends StatelessWidget {
  final String releaseDate;

  const ReleaseDateView({required this.releaseDate, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.calendar,
          color: MColors.electricBlue,
          size: 20,
        ),
        const SizedBox(
          width: WidgetsConstants.releaseDateViewSizedBoxHegiht,
        ),
        Text(
          releaseDate,
        ),
      ],
    );
  }
}
