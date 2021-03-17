import 'dart:io';
import 'dart:ui';
import 'package:Project/screen/done_screen.dart';
import 'package:Project/screen/view_image_profile.dart';
import 'package:Project/Buttons/mediaRow.dart';
import 'package:Project/Buttons/switch_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:Project/widgets/logo.dart';
// import 'package:path/path.dart' as path;
// import 'package:path_provider/path_provider.dart' as syspaths;

class PersonalInfoScreen extends StatefulWidget {
  static const routeName = "/personal-screen";

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  bool status = false;
  int weight = 70;
  int height = 70;
  bool statu = false;
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool activeColor1 = false;
  Color color1;
  bool activeColor2 = false;
  Color color2;
  bool activeColor3 = false;
  Color color3;

  File image;
  final picker = ImagePicker();
//function to take picture
  Future<void> getImage(String kind) async {
    try {
      ImageSource kindImage;

      if (kind == 'camera') {
        kindImage = ImageSource.camera;
      } else {
        kindImage = ImageSource.gallery;
      }

      final pickedFile = await picker.getImage(source: kindImage);

      setState(() {
        if (pickedFile != null) {
          image = File(pickedFile.path);
        } else {
          print('No image selected.');
        }
      });
    } catch (error) {
      print("goooooooooooo13" + error);
    }
    // final appDir = await syspaths.getApplicationDocumentsDirectory();
    // final fileName = path.basename(pickedFile.path);
    // final saveImage = await pickedFile.("${appDir.path}/$fileName");
  }

  void _changeColor1() {
    if (activeColor1 == false) {
      setState(() {
        activeColor1 = true;
        activeColor2 = false;
        activeColor3 = false;

        color1 = Color.fromRGBO(244, 67, 54, 1);
      });
    }
  }

  void _changeColor2() {
    if (activeColor2 == false) {
      setState(
        () {
          activeColor1 = false;
          activeColor2 = true;
          activeColor3 = false;

          color2 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  void _changeColor3() {
    if (activeColor3 == false) {
      setState(
        () {
          activeColor1 = false;
          activeColor2 = false;
          activeColor3 = true;

          color3 = Color.fromRGBO(244, 67, 54, 1);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      //to mix between background color and form
      //stack : allow to marge between more than one option
      body: Stack(
        children: [
          //backgroun mix color
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
          ),

          SingleChildScrollView(
            //her find logo and form and button and media
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //to make logo near from camera button
                Stack(
                  children: [
                    //two container : one is white and anthor is have a colors
                    Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 20, top: 37),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(33, 150, 243, 1),
                            Color.fromRGBO(244, 67, 54, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black26,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        //anthor container inside container
                        //gestureDetector help to use ontap
                        child: GestureDetector(
                          child: Container(
                            child: Center(
                              //to do image in container
                              child: CircleAvatar(
                                maxRadius: 90,
                                minRadius: 80,
                                //if is first singUp you should to choose photo
                                //if you begin you have an empty image until you choose image or take by camera
                                backgroundImage: image == null
                                    ? AssetImage("assets/profile.png")
                                    : FileImage(
                                        image,
                                      ),
                              ),
                            ),
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          //option ontap help you, if press on image will show 3 option:
                          //1-take by camera.
                          //2-select from galery.
                          //3-view profile
                          onTap: () {
                            //showModalBottomSheet to view bottom box that have previous option
                            showModalBottomSheet(
                              context: context,
                              builder: (_) => Container(
                                color: Color.fromRGBO(35, 35, 35, 1),
                                padding: EdgeInsets.only(top: 10),
                                height: 170,
                                child: Column(
                                  children: [
                                    FlatButton(
                                      minWidth: deviceSize.width,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        getImage("camera");
                                        Navigator.of(context).pop();
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.photo_camera),
                                          SizedBox(width: 20),
                                          Text("Take Profile Picture"),
                                        ],
                                      ),
                                    ),
                                    FlatButton(
                                      minWidth: deviceSize.width,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        getImage("gallery");
                                        Navigator.of(context).pop();
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.photo_library_outlined),
                                          SizedBox(width: 20),
                                          Text("Select From Gallery"),
                                        ],
                                      ),
                                    ),
                                    //this option to view your profile in anthor screen
                                    Hero(
                                      tag: "assets/profile.png",
                                      child: FlatButton(
                                        minWidth: deviceSize.width,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (ctx) =>
                                                  ViewImageProfile(image),
                                            ),
                                          );
                                          //Navigator.of(context).pop();
                                        },
                                        child: Row(
                                          children: [
                                            Icon(Icons
                                                .photo_size_select_actual_rounded),
                                            SizedBox(width: 20),
                                            Text("View Profile Picture"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    //positioned used to locating anthor opation that here is camera button
                    Positioned(
                      bottom: 10,
                      left: 140,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(30, 30, 30, 1).withOpacity(0.2),
                        ),
                        child: Center(
                          child: FlatButton(
                            padding: EdgeInsets.all(1),
                            child: Center(
                              child: Icon(
                                Icons.photo_camera,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () => getImage("camera"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //form that have name & height & weight & and date
                Container(
                  //shape of container that have a form
                  height: deviceSize.height * 0.56,
                  width: deviceSize.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                          Row(
                            children: [
                              Text(
                                "Gender",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 80),
                              SwitchIcon(),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              onTap: () => _changeColor1(),
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: "User Name",
                                labelStyle: TextStyle(
                                  color: activeColor1
                                      ? color1
                                      : Color.fromRGBO(33, 150, 243, 1),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              onTap: () => _changeColor2(),
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: "Your height",
                                labelStyle: TextStyle(
                                  color: activeColor2
                                      ? color2
                                      : Color.fromRGBO(33, 150, 243, 1),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            child: TextField(
                              onTap: () => _changeColor3(),
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: "Your weight",
                                labelStyle: TextStyle(
                                  color: activeColor3
                                      ? color3
                                      : Color.fromRGBO(33, 150, 243, 1),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(height: 20),
                          //package of date and time
                          DateTimeFormField(
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.black45),
                              errorStyle: TextStyle(color: Colors.redAccent),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.event_note),
                              labelText: 'Your Birthday',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(244, 67, 54, 1),
                              ),
                            ),
                            mode: DateTimeFieldPickerMode.date,
                            autovalidateMode: AutovalidateMode.always,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AuthButton("Finish", DoneScreen.routeName),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
