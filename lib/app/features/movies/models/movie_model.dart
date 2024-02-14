class MovieModel {
  final String description;
  final String imageURL;
  final String movieName;
  final String genres;
  final double rating;
  final String releaseDate;
  final int duration;
  MovieModel({
    required this.description,
    required this.imageURL,
    required this.movieName,
    required this.genres,
    required this.rating,
    required this.releaseDate,
    required this.duration
  });
}