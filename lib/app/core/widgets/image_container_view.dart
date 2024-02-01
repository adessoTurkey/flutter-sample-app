import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      child: ClipRRect(
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageURL,
          placeholder: (context, url) {
            return Image.asset(
              placeholderImage,
              fit: BoxFit.fill,
            );
          },
          errorWidget: (context, url, error) =>
              const FaIcon(FontAwesomeIcons.exclamation),
        ),
      ),
    );
  }
}
