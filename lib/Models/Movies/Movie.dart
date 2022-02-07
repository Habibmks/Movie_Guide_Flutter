import 'dart:core';

class Movie {
  String title, releaseDate, poster_path;
  int id;

  Movie(
      {required this.id,
      required this.title,
      required this.poster_path,
      required this.releaseDate});

  factory Movie.fromJson(dynamic json) {
    return Movie(
        id: json["id"] as int,
        title: json["title"] as String,
        poster_path: json["poster_path"] as String,
        releaseDate: json["release_date"]);
  }
  String toString() {
    return "id: $id\nname: $title\nposter_path: $poster_path";
  }
}
