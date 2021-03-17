import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SwitchIcon extends StatefulWidget {
  static const routeName = "/personal-screen";

  @override
  _SwitchIconState createState() => _SwitchIconState();
}

class _SwitchIconState extends State<SwitchIcon> {
  bool statu = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterSwitch(
        activeSwitchBorder: Border.all(),
        inactiveSwitchBorder: Border.all(),
        width: 150.0,
        height: 55.0,
        valueFontSize: 25.0,
        activeText: "Female",
        inactiveText: "Male",
        inactiveColor: Colors.white,
        activeColor: Colors.white,
        activeTextColor: Color.fromRGBO(244, 67, 54, 1),
        inactiveTextColor: Color.fromRGBO(33, 150, 243, 1),
        activeIcon: Icon(FontAwesomeIcons.venus),
        inactiveIcon: Icon(FontAwesomeIcons.mars),
        toggleSize: 45.0,
        activeToggleColor: Color.fromRGBO(244, 67, 54, 1),
        inactiveToggleColor: Color.fromRGBO(33, 150, 243, 1),
        value: statu,
        borderRadius: 30.0,
        padding: 8.0,
        showOnOff: true,
        onToggle: (val) {
          setState(() {
            statu = val;
          });
        },
      ),
    );
  }
}
