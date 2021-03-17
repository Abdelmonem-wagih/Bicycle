import 'package:Project/providers/launch_button.dart';
import 'package:Project/providers/providerHome.dart';
import 'package:Project/screen/auth_screen.dart';
import 'package:Project/screen/done_screen.dart';
import 'package:Project/screen/home_screen.dart';
import 'package:Project/screen/personal_info_screen.dart';
import 'package:Project/screen/singIn_screen.dart';
import 'package:Project/screen/singUp_screen.dart';
import 'package:Project/Buttons/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProviderHome(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LaunchButton(),
        ),
      ],
      child: MaterialApp(
        routes: {
          SingInScreen.routeName: (ctx) => SingInScreen(),
          SingUpScreen.routeName: (ctx) => SingUpScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          DoneScreen.routeName: (ctx) => DoneScreen(),
          BottomBar.routeName: (ctx) => BottomBar(),
          PersonalInfoScreen.routeName: (ctx) => PersonalInfoScreen(),
        },
        home: AuthScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
