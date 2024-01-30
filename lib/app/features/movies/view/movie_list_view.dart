import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieListView extends StatelessWidget {
  final List<String> list;
  const MovieListView({required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: MovieCellView(
            imageURL: list[index],
          ),
        );
      },
    );
  }

  Widget _test() {
    return ConfigurationWidget(
      onConfigurationReady: (configuration) {
        return Container();
      },
    );
  }
}
