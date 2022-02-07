import 'dart:core';

import 'package:movie_guide/Models/Series/Series.dart';
import '../Genres.dart';
import '../Series/Season.dart';

class SeriesDetails extends Series {
  String overview, original_title, first_air_date;
  int episode_count, season_count;
  List<Genres> genres;
  List<Season> seasons;
  SeriesDetails(
      {required id,
      required title,
      required poster,
      required this.overview,
      required this.original_title,
      required this.first_air_date,
      required this.episode_count,
      required this.season_count,
      required this.genres,
      required this.seasons})
      : super(id: id, title: title, poster: poster);

  factory SeriesDetails.fromJson(dynamic json) {
    var list = json['seasons'] as List;
    List<Season> seasonList = list.map((i) => Season.fromJson(i)).toList();
    list = json['genres'] as List;
    List<Genres> genresList = list.map((i) => Genres.fromJson(i)).toList();
    return SeriesDetails(
        id: json['id'],
        title: json['name'],
        poster: json['poster_path'],
        overview: json['overview'],
        original_title: json['original_name'],
        first_air_date: json['first_air_date'],
        episode_count: json['number_of_episodes'],
        season_count: json['number_of_seasons'],
        genres: genresList,
        seasons: seasonList);
  }
}

