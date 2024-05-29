
enum GenreType {
  tv(endpoint: "/tv/list"),
  movie(endpoint: "/movie/list");

  const GenreType({required this.endpoint});

  final String endpoint;
}