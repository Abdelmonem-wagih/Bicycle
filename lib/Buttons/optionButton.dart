import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Function launchApp;
  final IconData icon;
  final Color iconColor;
  final Color borderIconColor;

  OptionButton({
    this.text,
    this.launchApp,
    this.icon,
    this.iconColor,
    this.borderIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      //minWidth: deviceSize.width,
      textColor: Colors.grey,
      onPressed: () {
        launchApp();
      },
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: borderIconColor,
            ),
            child: Icon(
              icon,
              size: 45,
              color: iconColor,
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
