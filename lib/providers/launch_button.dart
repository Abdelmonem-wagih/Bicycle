import 'package:Project/Buttons/optionButton.dart';
import 'package:Project/providers/launch_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

LaunchFunction launchFunction = LaunchFunction();

class LaunchButton with ChangeNotifier {
  List<OptionButton> _buttons = [
    OptionButton(
      text: "Facebook",
      launchApp: launchFunction.launchFacebook,
      icon: FontAwesomeIcons.facebook,
      iconColor: Colors.blue,
    ),
    OptionButton(
      text: "Messanger",
      launchApp: launchFunction.launchMessanger,
      icon: FontAwesomeIcons.facebookMessenger,
      iconColor: Colors.blue,
    ),
    OptionButton(
      text: "Whatsapp",
      launchApp: launchFunction.launchWhatsApp,
      icon: FontAwesomeIcons.whatsapp,
      iconColor: Colors.white,
      borderIconColor: Colors.green,
    ),
    OptionButton(
      text: "Twitter",
      launchApp: launchFunction.launchTwitter,
      icon: FontAwesomeIcons.twitter,
      iconColor: Colors.blue,
    ),
    OptionButton(
      text: "Telegram",
      // launchApp: launchFunction.launchMessanger,
      icon: FontAwesomeIcons.telegram,
      iconColor: Colors.blue,
    ),
    OptionButton(
      text: "Bluetooth",
      // launchApp: launchFunction.launchFacebook,
      icon: FontAwesomeIcons.bluetooth,
      iconColor: Colors.blue,
    ),
    OptionButton(
      text: "Gmail",
      launchApp: launchFunction.launchGmail,
      icon: Icons.email_outlined,
      iconColor: Colors.red,
    ),
    OptionButton(
      text: "Drive",
      //launchApp: launchFunction.launchWhatsApp,
      icon: FontAwesomeIcons.googleDrive,
    ),
  ];

  List<OptionButton> get buttons {
    return [..._buttons];
  }
}
