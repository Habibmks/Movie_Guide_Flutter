import 'package:flutter/material.dart';

import 'Models/Movies/Movie.dart';

MaterialButton longButtons(String title, VoidCallback fun,
    {Color color: const Color(0xfff063057), Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed: fun,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    height: 45,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}

label(String title) => Text(title);

InputDecoration buildInputDecoration(String hintText, IconData icon) {
  return InputDecoration(
    prefixIcon: Icon(icon, color: Color.fromRGBO(50, 62, 72, 1.0)),
    // hintText: hintText,
    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
  );
}

Widget MovieWidget(Movie movie, Size size) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.05, vertical: size.height * 0.01),
    width: size.width,
    height: size.height * 0.1,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.6),
          offset: Offset(
            0.0,
            10.0,
          ),
          blurRadius: 10.0,
          spreadRadius: -6.0,
        ),
      ],
    ),
    // image: DecorationImage(
    //   colorFilter: ColorFilter.mode(
    //     Colors.black.withOpacity(0.35),
    //     BlendMode.multiply,
    //   ),
    //   image: NetworkImage(movie.poster_path),
    //   fit: BoxFit.cover,
    // ),
    child: Stack(
      children: [
        Align(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              movie.title,
              style: TextStyle(
                fontSize: 19,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          alignment: Alignment.center,
        ),
        Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(width: 7),
                    Text("rating"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    SizedBox(width: 7),
                    Text("cookTime"),
                  ],
                ),
              )
            ],
          ),
          alignment: Alignment.bottomLeft,
        ),
      ],
    ),
  );
}
