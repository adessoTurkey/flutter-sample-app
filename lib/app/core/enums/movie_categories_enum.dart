
enum MovieCategoriesEnum {
  nowPlaying,
  popular,
  topRated,
  upcoming;
}

extension MovieCategoriesExtension on MovieCategoriesEnum {
  String get value {
    switch (this) {
      case MovieCategoriesEnum.nowPlaying:
        return "now_playing";
      case MovieCategoriesEnum.popular:
        return "popular";
      case MovieCategoriesEnum.topRated:
        return "top_rated";
      case MovieCategoriesEnum.upcoming:
        return "upcoming";
    }
  }
}