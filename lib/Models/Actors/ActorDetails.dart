import 'package:flutter/cupertino.dart';

import "Actor.dart";

class ActorDetails extends Actor{
  String biography,birthday;
  List<String> known_names;
  ActorDetails({
    required this.biography,
    required this.birthday,
    required this.known_names,
    required id,
    required name,
    required poster,
    required gender,
    required popularity
  }) : super(
    id: id,
    name: name,
    poster: poster,
    gender: gender,
    popularity: popularity
  );

  factory ActorDetails.fromJson(dynamic json){
    return ActorDetails(
      id: json["id"] as int,
      name: json["name"],
      poster: json["profile_path"],
      gender: json["gender"],
      popularity: json["popularity"],
      biography: json["biography"],
      birthday: json["birthday"],
      known_names: json["also_known_as"] as List<String>
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "\nbiography: $biography\nbirthday: $birthday\nknown names: $known_names";
  }
}
