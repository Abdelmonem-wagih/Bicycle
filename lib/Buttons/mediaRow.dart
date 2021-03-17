import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MediaRow extends StatelessWidget {
  const MediaRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          child: Image.network(
            "http://pngimg.com/uploads/google/google_PNG19635.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 30),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.facebookF,
            size: 30,
            color: Colors.blueAccent,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 30),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.twitter,
            size: 30,
            color: Color.fromRGBO(33, 150, 243, 1),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final String ontap;

  AuthButton(this.text, this.ontap);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(33, 150, 243, 1),
              Color.fromRGBO(244, 67, 54, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 1],
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).accentTextTheme.title.color,
              fontWeight: FontWeight.bold),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(ontap);
      },
    );
  }
}
