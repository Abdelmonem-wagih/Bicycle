import 'dart:ui';
import 'package:Project/widgets/appDrawer.dart';
import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.white);

class SharePostScreen extends StatefulWidget {
  @override
  _SharePostScreenState createState() => _SharePostScreenState();
}

class _SharePostScreenState extends State<SharePostScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return AppDrawer(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(33, 150, 243, 1),
                    Color.fromRGBO(244, 67, 54, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // image: DecorationImage(
                //     image: ExactAssetImage("assets/colored background-01.png"),
                //     //fit: BoxFit.cover,

                //     ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: deviceSize.height * 0.15),
            child: Center(
              child: Container(
                height: 400,
                width: 340,
                padding:
                    EdgeInsets.only(top: 16, right: 15, left: 10, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SafeArea(
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration.collapsed(
                          hintText: "Share with friends ..",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Stack(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                                Positioned(
                                  left: 35,
                                  bottom: 13,
                                  child: Text(
                                    "Location",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Stack(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                      Icons.photo_size_select_actual_outlined,
                                      color: Colors.grey),
                                ),
                                Positioned(
                                  left: 40,
                                  bottom: 13,
                                  child: Text(
                                    "Photo",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Stack(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.emoji_flags_rounded,
                                      color: Colors.grey),
                                ),
                                Positioned(
                                  left: 40,
                                  bottom: 13,
                                  child: Text(
                                    "Ride",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // Scaffold(
    //     body: Stack(
    //   children: [

    //     Container(
    //       height: deviceSize.height,
    //       margin: EdgeInsets.only(top: 87),
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [
    //             Color.fromRGBO(33, 150, 243, 1).withOpacity(0.4),
    //             Color.fromRGBO(244, 67, 54, 1).withOpacity(0.4),
    //           ],
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //         ),
    //         image: DecorationImage(
    //           image: ExactAssetImage("assets/colored background-01.png"),
    //         ),
    //       ),
    //     ),
    //     Center(
    //       child: Flexible(
    //         child: Container(
    //           height: 400,
    //           width: 300,
    //           padding: EdgeInsets.all(16),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(50),
    //           ),
    //           child: Flexible(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 TextField(
    //                   textInputAction: TextInputAction.newline,
    //                   decoration:
    //                       InputDecoration(labelText: "Share with friends .."),
    //                   keyboardType: TextInputType.multiline,
    //                   maxLength: 4,
    //                 ),
    //                 Flexible(
    //                   child: Row(
    //                     children: [
    //                       RaisedButton(
    //                         onPressed: () {},
    //                         child: Icon(
    //                           Icons.location_on_rounded,
    //                         ),
    //                       ),
    //                       RaisedButton(
    //                         onPressed: () {},
    //                         child:
    //                             Icon(Icons.photo_size_select_actual_outlined),
    //                       ),
    //                       RaisedButton(
    //                         onPressed: () {},
    //                         child: Icon(Icons.emoji_flags_rounded),
    //                       ),
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ));
  }
}
