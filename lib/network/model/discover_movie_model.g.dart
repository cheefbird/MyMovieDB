// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIDiscoverQuery _$APIDiscoverQueryFromJson(Map<String, dynamic> json) =>
    APIDiscoverQuery(
      page: json['page'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => APIResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['total_results'] as int,
      totalPages: json['total_pages'] as int,
    );

Map<String, dynamic> _$APIDiscoverQueryToJson(APIDiscoverQuery instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };

APIResults _$APIResultsFromJson(Map<String, dynamic> json) => APIResults(
      movie: APIMovie.fromJson(json['movie'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APIResultsToJson(APIResults instance) =>
    <String, dynamic>{
      'movie': instance.movie,
    };

APIMovie _$APIMovieFromJson(Map<String, dynamic> json) => APIMovie(
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      releaseDate: json['release_date'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      title: json['title'] as String,
      popularity: json['popularity'] as num,
      posterImage: json['poster_path'] as String?,
      backdropImage: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$APIMovieToJson(APIMovie instance) => <String, dynamic>{
      'poster_path': instance.posterImage,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropImage,
      'popularity': instance.popularity,
    };
