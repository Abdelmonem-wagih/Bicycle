import 'package:Project/screen/home_screen.dart';
import 'package:Project/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:Project/Buttons/mediaRow.dart';

class SingInScreen extends StatefulWidget {
  static const routeName = "/sing-in";
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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

  void _changeColor() {
    if (activeColor1 == false) {
      setState(() {
        activeColor2 = false;
        activeColor1 = true;
        color1 = Color.fromRGBO(244, 67, 54, 1);
      });
    } else if (activeColor2 == false) {
      setState(() {
        activeColor1 = false;
        activeColor2 = true;
        color2 = Color.fromRGBO(244, 67, 54, 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       Color.fromRGBO(33, 150, 243, 1).withOpacity(0.7),
            //       Color.fromRGBO(244, 67, 54, 1).withOpacity(0.7), //red
            //     ],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     stops: [0, 1],
            //   ),
            // ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(70, 150),
                Container(
                  height: 150,
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
                            autocorrect: true,
                            onTap: () => _changeColor(),
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
                            onTap: () => _changeColor(),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_open,
                                color: activeColor2
                                    ? color2
                                    : Color.fromRGBO(33, 150, 243, 1),
                              ),
                              labelText: "password",
                              labelStyle: TextStyle(
                                color: activeColor2
                                    ? color2
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
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AuthButton("Log in", HomeScreen.routeName),
                SizedBox(height: 20),
                MediaRow()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
