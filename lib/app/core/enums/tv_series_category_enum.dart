enum TvSeriesCategory {
  airingToday(value: "airing_today"),
  onTheAir(value: "on_the_air"),
  popular(value: "popular"),
  topRated(value: "top_rated");

  final String value;

  const TvSeriesCategory({required this.value});
}