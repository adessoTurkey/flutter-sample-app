// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_movie_app/app/core/enums/enums.dart';

class SearchEntity {
  final MediaTypeEnum? type;
  final String? title;
  final String? imageURL;
  final int id;
  SearchEntity({
    this.type,
    this.title,
    this.imageURL,
    required this.id,
  });
}
