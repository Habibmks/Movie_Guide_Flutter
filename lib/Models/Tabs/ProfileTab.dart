import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileTabState();
  }
}

class ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Profile Tab')
          ],
        ),
      ),
    );
  }
}
