import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_guide/Models/Globals.dart'; 
import 'dart:async';

import 'package:movie_guide/Models/Movies/Movie.dart';

class ApiFunction{
  
  static Future<Movie?> getData() async{
    String url = "https://api.themoviedb.org/3/movie/15" + apiKey;
    print(apiKey);
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
    String data = response.body;
    var parsedJson = jsonDecode(data);
    Movie movie = Movie.fromJson(parsedJson);
    return movie;
    }else print(response.statusCode);
  }
}