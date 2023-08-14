class MovieResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  MovieResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) {
    return MovieResponse(
      page: json['page'] ?? 0,
      results: List<Movie>.from(json['results']?.map((x) => Movie.fromJson(x))) ?? [],
      totalPages: json['total_pages'] ?? 0,
      totalResults: json['total_results'] ?? 0,
    );
  }
}

class Movie {
  static const String baseUrl = 'https://image.tmdb.org/t/p/w500';

  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String? posterPath;
  String releaseDate;
  String title;
  bool video;
  num voteAverage;
  int voteCount;

  String get posterUrl => posterPath != null ? '$baseUrl$posterPath' : '';

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'] ?? true,
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      id: json['id'] ?? 0,
      originalLanguage: json['original_language'] ?? '',
      originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      popularity: json['popularity']?.toDouble() ?? 0.0,
      posterPath: json['poster_path'],
      releaseDate: json['release_date'] ?? '',
      title: json['title'] ?? '',
      video: json['video'] ?? false,
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] ?? 0,
    );
  }
}