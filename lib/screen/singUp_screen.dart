import 'package:Project/screen/personal_info_screen.dart';
import 'package:Project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:Project/Buttons/mediaRow.dart';

class SingUpScreen extends StatefulWidget {
  static const routeName = "/sing-up";
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  var _isLoading = false;

  final _passwordController = TextEditingController();

  AnimationController _controller;

  bool activeColor1 = false;
  Color color1;
  bool activeColor2 = false;
  Color color2;
  bool activeColor3 = false;
  Color color3;
  bool activeColor4 = false;
  Color color4;
  bool activeColor5 = false;
  Color color5;

  void _changeColor1() {
    if (activeColor1 == false) {
      print("gooooooooo");
      setState(() {
        print("gooooooooo1");
        activeColor1 = true;
        activeColor2 = false;
        activeColor3 = false;
        activeColor4 = false;
        activeColor5 = false;

        color1 = Color.fromRGBO(244, 67, 54, 1);
      });
    }
  }

  void _changeColor2() {
    if (activeColor2 == false) {
      print("gooooooooo2");
      setState(
        () {
          print("gooooooooo3");
          activeColor1 = false;
          activeColor2 = true;
          activeColor3 = false;
          activeColor4 = false;
          activeColor5 = false;

          color2 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  void _changeColor3() {
    if (activeColor3 == false) {
      print("gooooooooo4");
      setState(
        () {
          print("gooooooooo5");
          activeColor1 = false;
          activeColor2 = false;
          activeColor3 = true;
          activeColor4 = false;
          activeColor5 = false;

          color3 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  void _changeColor4() {
    if (activeColor4 == false) {
      print("gooooooooo6");
      setState(
        () {
          print("gooooooooo7");
          activeColor1 = false;
          activeColor2 = false;
          activeColor3 = false;
          activeColor4 = true;
          activeColor5 = false;

          color4 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  void _changeColor5() {
    if (activeColor5 == false) {
      print("gooooooooo8");
      setState(
        () {
          print("gooooooooo9");
          activeColor1 = false;
          activeColor2 = false;
          activeColor3 = false;
          activeColor4 = false;
          activeColor5 = true;

          color5 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       Color.fromRGBO(33, 150, 243, 1).withOpacity(0.7),
            //       Color.fromRGBO(244, 67, 54, 1).withOpacity(0.7),
            //     ],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     stops: [0, 1],
            //   ),
            // ),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(15, 50),
                  Flexible(
                    child: Container(
                      height: 320,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),

                      padding: EdgeInsets.all(16),

                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TextFormField(
                                onTap: () => _changeColor1(),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: activeColor1
                                        ? color1
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                    color: activeColor1
                                        ? color1
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value.isEmpty || !value.contains('@')) {
                                    return 'Invalid email!';
                                  }
                                },
                              ),
                              TextFormField(
                                onTap: () => _changeColor2(),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_in_talk_rounded,
                                    color: activeColor2
                                        ? color2
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                  labelText: "Phone Number",
                                  labelStyle: TextStyle(
                                    color: activeColor2
                                        ? color2
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value.isEmpty ||
                                      (value.length < 11 &&
                                          value.length > 11)) {
                                    return 'Invalid Phone Number!';
                                  }
                                },
                              ),
                              TextFormField(
                                onTap: () => _changeColor3(),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_chart,
                                    color: activeColor3
                                        ? color3
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                  labelText: "National ID",
                                  labelStyle: TextStyle(
                                    color: activeColor3
                                        ? color3
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty ||
                                      (value.length < 14 &&
                                          value.length > 14)) {
                                    return 'Invalid ID!';
                                  }
                                },
                              ),
                              TextFormField(
                                onTap: () => _changeColor4(),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_open,
                                    color: activeColor4
                                        ? color4
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                  labelText: "password",
                                  labelStyle: TextStyle(
                                    color: activeColor4
                                        ? color4
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty || value.length < 5) {
                                    return 'Password is too short!';
                                  }
                                },
                              ),
                              TextFormField(
                                onTap: () => _changeColor5(),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: activeColor5
                                        ? color5
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                  labelText: "Confirm Password",
                                  labelStyle: TextStyle(
                                    color: activeColor5
                                        ? color5
                                        : Color.fromRGBO(33, 150, 243, 1),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value != _passwordController.text) {
                                    return 'Passwords do not match!';
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      //  ),
                    ),
                  ),
                  SizedBox(height: 20),
                  AuthButton(
                    "Sing Up",
                    PersonalInfoScreen.routeName,
                  ), //, Navigator.of(context).pushNamed(PersonalInfoScreen.routeName)),
                  SizedBox(height: 20),
                  MediaRow(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
