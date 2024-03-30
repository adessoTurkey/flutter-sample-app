import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/search/search.dart';

class SearchListView extends StatelessWidget {
  final List<SearchEntity> searchResults;
  const SearchListView({super.key, required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: 10.symmetric(horizontal: 30),
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: 10.onlyVertical,
            child: SearchListViewCell(searchEntity: searchResults[index]),
          );
        },
      ),
    );
  }
}
