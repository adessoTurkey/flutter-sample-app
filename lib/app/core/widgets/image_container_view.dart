import 'package:flutter/material.dart';

class ImageContainerView extends StatelessWidget {
  final String imageURL;
  final Size? containerSize;
  
  const ImageContainerView({
    required this.imageURL,
    this.containerSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerSize?.width,
      height: containerSize?.height,
      child: ClipRRect(
        child: Image.network(
          imageURL,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
