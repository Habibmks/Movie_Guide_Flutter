import 'dart:core';

class Season {
  int id, episode_count;
  String name;
  Season({required this.id, required this.episode_count, required this.name});
  factory Season.fromJson(dynamic json) {
    return Season(
        id: json["id"],
        episode_count: json['episode_count'],
        name: json['name']);
  }
}
