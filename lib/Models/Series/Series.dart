import 'dart:core';

class Series {
  int id;
  String title, poster;
  Series({required this.id, required this.title, required this.poster});
  factory Series.fronJson(dynamic json) {
    return Series(
        id: json["id"], title: json["title"], poster: json["poster_path"]);
  }
  @override
  String toString() {
    // TODO: implement toString
    return "id: $id\ntitle: $title\nposter: $poster";
  }
}

