import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app/app/features/movies/models/genre_data/genre_data.dart';

class GenreMock {
  static GenreMock? _instance;
  // Avoid self instance
  GenreMock._();
  static GenreMock get instance => _instance ??= GenreMock._();

  late List<GenreData> genres;

  Future<void> init() async {
    readJson();
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/genres.json');
    final data = await json.decode(response)['genres'] as List;
    genres = data.map((e) => GenreData.fromJson(e)).toList();
  }
}
