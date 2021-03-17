import 'package:Project/providers/launch_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'optionButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final button = Provider.of<LaunchButton>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Container(
        width: 80,
        child: Stack(
          children: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.share,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => Container(
                    color: Color.fromRGBO(35, 35, 35, 1),
                    padding: EdgeInsets.only(top: 10),
                    height: 160,
                    child: Column(
                      children: [
                        FlatButton(
                          //minWidth: deviceSize.width,
                          textColor: Colors.grey,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 30,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 20),
                              Text("Share to your profile"),
                            ],
                          ),
                        ),
                        FlatButton(
                          //minWidth: deviceSize.width,
                          textColor: Colors.grey,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.people_outline,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 20),
                              Text("Share to a group"),
                            ],
                          ),
                        ),
                        FlatButton(
                          //minWidth: deviceSize.width,
                          textColor: Colors.grey,
                          onPressed: () {
                            Navigator.of(context).pop();
                            showModalBottomSheet(
                              context: _,
                              builder: (_) => Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 250,
                                child: GridView.builder(
                                  itemCount: button.buttons.length,
                                  itemBuilder: (context, i) => OptionButton(
                                    text: button.buttons[i].text,
                                    icon: button.buttons[i].icon,
                                    launchApp: button.buttons[i].launchApp,
                                    iconColor: button.buttons[i].iconColor,
                                    borderIconColor:
                                        button.buttons[i].borderIconColor,
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 2,
                                    mainAxisSpacing: 2,
                                    childAspectRatio: 1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 20),
                              Text("More options..."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              left: 45,
              top: 15,
              child: Text(
                "Share",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// children: [
//                                     OptionButton(
//                                       text: "Send in Messanger",
//                                       launchApp: launchApps.launchMessanger,
//                                       icon: FontAwesomeIcons.facebookMessenger,
//                                       color: Colors.blue,
//                                     ),
//                                     OptionButton(
//                                       text: "Send in Facebook",
//                                       launchApp: launchApps.launchFacebook,
//                                       icon: FontAwesomeIcons.facebook,
//                                       color: Colors.blue,
//                                     ),
//                                     OptionButton(
//                                       text: "Send in Whatsapp",
//                                       launchApp: launchApps.launchWhatsApp,
//                                       icon: FontAwesomeIcons.whatsapp,
//                                       color: Colors.green,
//                                     ),
//                                   ],
