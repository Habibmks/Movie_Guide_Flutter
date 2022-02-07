import 'package:flutter/material.dart';

class Actor {
  final int id;
  final String name;
  final String poster;
  final int gender;
  final double popularity;

  Actor(
      {required this.id,
      required this.name,
      required this.poster,
      required this.gender,
      required this.popularity});

  factory Actor.fromJson(dynamic json) {
    return Actor(
        id: json["id"],
        name: json["name"],
        poster: "profile_path",
        gender: "gender" as int,
        popularity: "popularity" as double);
  }
  String toString() {
    return "id: $id\nname: $name\nposter: $poster\ngender: $gender\npopularity: $popularity";
  }
}
