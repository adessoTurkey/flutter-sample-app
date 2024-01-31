class MovieModel {
  final String imageURL;
  final String movieName;
  final String genres;
  final double rating;
  final String releaseDate;
  MovieModel({
    required this.imageURL,
    required this.movieName,
    required this.genres,
    required this.rating,
    required this.releaseDate,
  });
}

List<MovieModel> mockMovies = [
  MovieModel(
    imageURL:
        "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    movieName: "Joker",
    genres: "Crime, Drama, Thriller",
    rating: 4.2,
    releaseDate: "21.02.2022",
  ),
  MovieModel(
    imageURL:
        "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    movieName: "The Man In The High Castle",
    genres: "History, Crime, Drama",
    rating: 4.1,
    releaseDate: "21.02.2023",
  ),
  MovieModel(
    imageURL:
        "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg",
    movieName: "La La Land",
    genres: "Drama, Musical, Romance",
    rating: 4.4,
    releaseDate: "11.01.2019",
  ),
  MovieModel(
    imageURL:
        "https://musicart.xboxlive.com/7/6e355100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    movieName: "Joker",
    genres: "Crime, Drama, Thriller",
    rating: 4.2,
    releaseDate: "21.02.2022",
  ),
  MovieModel(
    imageURL:
        "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
    movieName: "The Man In The High Castle",
    genres: "History, Crime, Drama",
    rating: 4.1,
    releaseDate: "21.02.2023",
  ),
  MovieModel(
    imageURL:
        "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg",
    movieName: "La La Land",
    genres: "Drama, Musical, Romance",
    rating: 4.4,
    releaseDate: "11.01.2019",
  ),
];
