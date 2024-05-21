import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/app_constants.dart';

import '../../../core/constants/constants.dart';

class CustomMarker extends StatelessWidget {
  const CustomMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: AppConstants.outerMarkerSize,
          height: AppConstants.outerMarkerSize,
          decoration: const BoxDecoration(
            color: MColors.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: AppConstants.innerMarkerSize,
          height: AppConstants.innerMarkerSize,
          decoration: const BoxDecoration(
            color: MColors.electricBlue,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
