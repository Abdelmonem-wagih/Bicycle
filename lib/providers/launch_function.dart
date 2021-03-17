import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class LaunchFunction {
  void launchWhatsApp() async {
    String url() {
      if (Platform.isAndroid) {
        return "https://wa.me/?text=post";
      } else {
        return "https://api.whatsapp.com";
      }
    }

    if (await canLaunch(url())) {
      print("Dooone");
      await launch(url());
      print("Dooone1");
    } else {
      throw "could not launch ${url()}";
    }
  }

  void launchMessanger() async {
    String url() {
      if (Platform.isAndroid) {
        return "http://m.me/?text=post";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw "could not launch ${url()}";
    }
  }

  void launchFacebook() async {
    String url() {
      if (Platform.isAndroid) {
        return "https://fb.me/?nocheckbrowser";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw "could not launch ${url()}";
    }
  }

  void launchGmail() async {
    String url() {
      if (Platform.isAndroid) {
        return "https://mail.google.com/mail/?nocheckbrowser";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw "could not launch ${url()}";
    }
  }

  void launchTwitter() async {
    String url() {
      if (Platform.isAndroid) {
        return "https://twitter.com/?nocheckbrowser";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw "could not launch ${url()}";
    }
  }
}
