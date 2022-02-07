import 'dart:core';

class Genres {
  int id;
  String genre;
  Genres({required this.id, required this.genre});
  factory Genres.fromJson(dynamic json) {
    return Genres(id: json['id'], genre: json['name']);
  }
}
