// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FavoriteData extends Equatable {
  final String? title;
  final String? releaseDate;
  final String? posterPath;

  const FavoriteData({
    this.title,
    this.releaseDate,
    this.posterPath,
  });

  @override
  List<Object?> get props => [title, releaseDate, posterPath];
}
