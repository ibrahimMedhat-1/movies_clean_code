class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'e6c5ee603e27eaac46ea561bf45a62f9';
  static const String playingNowPath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviePath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$apiKey';
  static String movieDetailsPath(movieId) => '$baseUrl/movie/$movieId?api_key=$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';
}
