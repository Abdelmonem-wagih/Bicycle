import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:Project/Buttons/bottom_bar.dart';
import 'package:Project/widgets/logo.dart';
import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  static const routeName = "/done-screen";
  // final File image;
  // DoneScreen(this.image);
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 400,
      splash: Logo(0, 0),
      curve: Curves.linear,
      nextScreen: BottomBar(),
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.rotate,
    );
  }
}
