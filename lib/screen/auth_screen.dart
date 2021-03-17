import 'package:Project/screen/singIn_screen.dart';
import 'package:Project/screen/singUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:Project/widgets/logo.dart';

enum AuthMode { Signup, Login }

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 600,
            height: 350,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(33, 150, 243, 1).withOpacity(0.7),
                  Color.fromRGBO(244, 67, 54, 1).withOpacity(0.7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(0.0, 230.0),
                  SizedBox(height: 20),
                  Flexible(
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Color.fromRGBO(33, 150, 243, 1),
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 84.0,
                          vertical: 11,
                        ),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(SingInScreen.routeName);
                      },
                    ),
                  ),
                  SizedBox(height: 50),
                  Flexible(
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Color.fromRGBO(33, 150, 243, 1),
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10),
                        child: Text(
                          "Create new account",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(SingUpScreen.routeName);
                      },
                    ),
                  ),
                  SizedBox(height: 50),
                  Flexible(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Use University account",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
