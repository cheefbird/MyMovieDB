import 'package:json_annotation/json_annotation.dart';

part 'discover_movie_model.g.dart';

@JsonSerializable()
class APIDiscoverQuery {
  factory APIDiscoverQuery.fromJson(Map<String, dynamic> json) =>
      _$APIDiscoverQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIDiscoverQueryToJson(this);

  String page;
  List<APIResults> results;
  @JsonKey(name: 'total_results')
  int totalResults;
  @JsonKey(name: 'total_pages')
  int totalPages;

  APIDiscoverQuery({
    required this.page,
    required this.results,
    required this.totalResults,
    required this.totalPages,
  });
}

@JsonSerializable()
class APIResults {
  APIMovie movie;

  APIResults({
    required this.movie,
  });

  factory APIResults.fromJson(Map<String, dynamic> json) =>
      _$APIResultsFromJson(json);

  Map<String, dynamic> toJson() => _$APIResultsToJson(this);
}

@JsonSerializable()
class APIMovie {
  @JsonKey(name: 'poster_path')
  String? posterImage;
  bool adult;
  String overview;
  @JsonKey(name: 'release_date')
  String releaseDate;
  @JsonKey(name: 'genre_ids')
  List<int> genreIds;
  int id;
  String title;
  @JsonKey(name: 'backdrop_path')
  String? backdropImage;
  num popularity;

  APIMovie({
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.genreIds,
    required this.id,
    required this.title,
    required this.popularity,
    this.posterImage,
    this.backdropImage,
  });

  factory APIMovie.fromJson(Map<String, dynamic> json) =>
      _$APIMovieFromJson(json);

  Map<String, dynamic> toJson() => _$APIMovieToJson(this);
}
