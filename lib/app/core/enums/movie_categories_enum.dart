
enum MovieCategoriesEnum {
  nowPlaying(value: "now_playing"),
  popular(value: "popular"),
  topRated(value: "top_rated"),
  upcoming(value: "upcoming");

  final String value;

  const MovieCategoriesEnum({required this.value});
}