import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
<<<<<<< HEAD
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
=======
>>>>>>> 653d78f ([feature-movies_page] movies view scrolling fixed, some widgets updated.)

class CarouselView extends StatefulWidget {
  final List list;
  final double height;
  final Function(int currentIndex) onPageChanged;

  const CarouselView({
    required this.list,
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
        itemCount: widget.list.length,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          var image = widget.list[index].imageURL;
          return carouselCardWidget(image);
        },
      ),
    );
  }

  Widget carouselCardWidget(String imageURL) {
<<<<<<< HEAD
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          margin: EdgeInsets.only(
            right: configuration.carouselCardRightPadding,
          ),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: ImageContainerView(
              imageURL: imageURL,
              placeholderImage: MovieAssets.images.poster1.path,
            ),
          ),
        );
      },
=======
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: ImageContainerView(
          imageURL: imageURL,
          placeholderImage: MovieAssets.images.poster1.path,
        ),
      ),
>>>>>>> 653d78f ([feature-movies_page] movies view scrolling fixed, some widgets updated.)
    );
  }
}
