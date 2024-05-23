import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/loading_view.dart';

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
      height: containerSize != null && containerSize!.height > 0
          ? containerSize?.height
          : null,
      child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageURL,
          placeholder: (context, url) {
            return const LoadingView();
          },
          errorWidget: (context, url, error) {
            return Image.asset(
              placeholderImage,
              fit: BoxFit.fill,
            );
          }),
    );
  }
}
