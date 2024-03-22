import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class CustomMarker extends StatelessWidget {
  const CustomMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: const BoxDecoration(
            color: MColors.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: const BoxDecoration(
            color: MColors.electricBlue,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
