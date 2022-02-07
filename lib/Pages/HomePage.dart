import 'package:flutter/material.dart';
import 'package:movie_guide/Functions/Api/ApiFunctions.dart';
import 'package:movie_guide/Models/Movies/Movie.dart';
import 'package:movie_guide/Widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

late var size;
late var ctx;
late Movie movie;
bool isloading = true;

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ctx = context;
    size = MediaQuery.of(ctx).size;
    return homePage();
  }

  @override
  void initState() {
    super.initState();
    getMovie();
  }

  Future<void> getMovie() async {
    movie = (await ApiFunction.getData())!;
    setState(() {
      isloading = false;
    });
  }

  Widget homePage() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Movie Guide"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  width: size.width * 0.75,
                  child: TextField(),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                load(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget load() {
    if (isloading) {
      return Container(
        child: Text("Loading"),
      );
    } else {
      return MovieWidget(movie, size);
    }
  }
}
