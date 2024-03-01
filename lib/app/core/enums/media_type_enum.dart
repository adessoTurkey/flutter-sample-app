import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum MediaTypeEnum {
  movie(
    iconName: FontAwesomeIcons.film,
    title: "Movie",
    value: "movie",
  ),
  tv(
    iconName: FontAwesomeIcons.tv,
    title: "TV Series",
    value: "tv",
  ),
  person(
    iconName: FontAwesomeIcons.user,
    title: "Actor",
    value: "person",
  );

  const MediaTypeEnum(
      {required this.iconName, required this.title, required this.value});
  final IconData iconName;
  final String title;
  final String value;
}
