// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import '../../../../core/constants/constants.dart';

class FavoriteEntity extends Equatable {
  final FavoriteEntityType favoriteEntityType;
  final int? id;
  final String? title;
  final String? releaseDate;
  final String? posterPath;

  const FavoriteEntity({
    required this.favoriteEntityType,
    required this.id,
    this.title,
    this.releaseDate,
    this.posterPath,
  });

  @override
  List<Object?> get props =>
      [id, favoriteEntityType, title, releaseDate, posterPath];

  String get posterURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";
}
