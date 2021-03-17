import 'dart:io';
import 'package:flutter/material.dart';

class ViewImageProfile extends StatefulWidget {
  static const routeName = "/home-screen";
  final File image;
  ViewImageProfile(this.image);
  @override
  _ViewImageProfileState createState() => _ViewImageProfileState();
}

class _ViewImageProfileState extends State<ViewImageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Profile'),
      ),
      body: Hero(
          tag: "assets/profile.png",
          child: Image.file(
            widget.image,
            fit: BoxFit.cover,
            height: 500,
          )),
    );
  }
}
