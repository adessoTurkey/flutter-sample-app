import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';

class CarouselView extends StatefulWidget {
  final List<String> images;
  final double height;
  final Function(int currentIndex) onPageChanged;

  const CarouselView({
    required this.images,
    required this.height,
    required this.onPageChanged,
    super.key,
  });

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
      viewportFraction: 0.65,
    );
    super.initState();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: PageView.builder(
        controller: controller,
        itemCount: widget.images.length,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          var image = widget.images[index];
          return carouselCardWidget(image);
        },
      ),
    );
  }

  Widget carouselCardWidget(String imageURL) {
    return Container(
      margin: const EdgeInsets.only(
        right: WidgetsConstants.carouselCardRightPadding,
      ),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: ImageContainerView(
          imageURL: imageURL,
          placeholderImage: MovieAssets.images.poster1.path,
        ),
      ),
    );
  }
}
