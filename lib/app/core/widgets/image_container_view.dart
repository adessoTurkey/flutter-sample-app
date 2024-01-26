import 'package:flutter/material.dart';

class ImageContainerView extends StatelessWidget {
  final String imageURL;
  final String placeholderImage;
  final Size? containerSize;

  const ImageContainerView({
    required this.imageURL,
    required this.placeholderImage,
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
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return ClipRRect(
              child: Image.asset(
                placeholderImage,
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }
}
