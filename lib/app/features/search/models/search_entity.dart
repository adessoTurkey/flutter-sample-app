// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchEntity {
  final SearchType type;
  final String title;
  final String info;
  final String imageURL;
  final int id;
  SearchEntity({
    required this.type,
    required this.title,
    required this.info,
    required this.imageURL,
    required this.id,
  });
}

enum SearchType {
  movie(iconName: FontAwesomeIcons.film, title: "Movie"),
  tv(iconName: FontAwesomeIcons.tv, title: "TV Series"),
  person(iconName: FontAwesomeIcons.user, title: "Actor");

  final IconData iconName;
  final String title;

  const SearchType({required this.iconName, required this.title});
}

List<SearchEntity> searchs = [
  SearchEntity(
      type: SearchType.movie,
      title: "The Shawshank",
      info: "Test",
      imageURL:
          "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      id: 12),
  SearchEntity(
      type: SearchType.movie,
      title: "The Shawshank",
      info: "Test",
      imageURL:
          "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      id: 12),
  SearchEntity(
      type: SearchType.movie,
      title: "The Shawshank",
      info: "Test",
      imageURL:
          "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      id: 12),
  SearchEntity(
      type: SearchType.person,
      title: "The Shawshank",
      info: "Test",
      imageURL:
          "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      id: 12),
  SearchEntity(
      type: SearchType.tv,
      title: "The Shawshank",
      info: "Test",
      imageURL:
          "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      id: 12),
];
