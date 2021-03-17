import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double bottom;
  final double top;
  // final String image;
  Logo(this.bottom, this.top);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.only(bottom: bottom, top: top),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(33, 150, 243, 1),
            Color.fromRGBO(244, 67, 54, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, 1],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Container(
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/logo.jpg",
            ),
          ),
          height: 180,
          width: 180,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
      ),
    );
  }
}
