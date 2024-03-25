enum RatingEnpoints {
  postRatingTv(endpoint: "/tv"),
  postRatingMovie(endpoint: "/movie"),
  fetchRatingMovies(endpoint: "/rated/movies"),
  fetchRatingTv(endpoint: "/rated/tv");

  const RatingEnpoints({required this.endpoint});

  final String endpoint;
}