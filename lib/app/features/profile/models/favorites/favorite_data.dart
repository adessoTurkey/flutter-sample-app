// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FavoriteData extends Equatable {
  final FavoriteDataType favoriteDataType;
  final int? id;
  final String? title;
  final String? releaseDate;
  final String? posterPath;

  const FavoriteData({
    required this.favoriteDataType,
    required this.id,
    this.title,
    this.releaseDate,
    this.posterPath,
  });

  @override
  List<Object?> get props => [title, releaseDate, posterPath];
}

enum FavoriteDataType { tv, movie }
