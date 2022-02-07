import 'dart:core';

import '../Genres.dart';
import 'Movie.dart';

class MovieDetails extends Movie {
  String original_title, overview;
  List<Genres> genres;

  MovieDetails(
      {required id,
      required title,
      required poster_path,
      required releaseDate,
      required this.original_title,
      required this.overview,
      required this.genres})
      : super(
            id: id,
            title: title,
            poster_path: poster_path,
            releaseDate: releaseDate);
  factory MovieDetails.fromJson(dynamic json) {
    var list = json['genres'] as List;
    List<Genres> genresList = list.map((i) => Genres.fromJson(i)).toList();
    return MovieDetails(
        id: json["id"],
        title: json["title"],
        poster_path: json["poster_path"],
        releaseDate: json["release_Date"],
        original_title: json["original_title"],
        overview: json["overview"],
        genres: genresList);
  }
  String toString(){
    return super.toString() + "\noriginal title: $original_title\noverview: $overview\ngenres: $genres";
  }
}

