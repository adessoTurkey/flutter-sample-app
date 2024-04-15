import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TvSeriesDetailPage extends StatelessWidget{
  final int tvSeriesId;
  const TvSeriesDetailPage({super.key, required this.tvSeriesId});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Tv Series Detail Page"),
    );
  }
}