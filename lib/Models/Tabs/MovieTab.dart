import 'package:flutter/material.dart';

class MovieTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MovieTabState();
  }
}

class MovieTabState extends State<MovieTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Movie Tab')
          ],
        ),
      ),
    );
  }
}
