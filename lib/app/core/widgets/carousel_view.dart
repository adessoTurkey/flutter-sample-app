import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class CarouselView extends StatefulWidget {
  final int listLength;
  final double height;
  final Function(int currentIndex) onPageChanged;
  final Widget? Function(BuildContext, int) itemBuilder;

  const CarouselView({
    required this.listLength,
    required this.height,
    required this.onPageChanged,
    required this.itemBuilder,
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
        itemCount: widget.listLength,
        onPageChanged: widget.onPageChanged,
        itemBuilder: widget.itemBuilder,
      ),
    );
  }
}

class CarouselImageCardWidget extends StatelessWidget {
  final String imageUrl;
  const CarouselImageCardWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          margin: EdgeInsets.only(
            right: configuration.carouselCardRightPadding,
          ),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: ImageContainerView(
              imageURL: imageUrl,
              placeholderImage: MovieAssets.images.poster1.path,
            ),
          ),
        );
      },
    );
  }
}
