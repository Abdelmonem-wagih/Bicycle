import 'package:flutter/material.dart';
import 'package:scaled_animated_scaffold/scaled_animated_scaffold.dart';

const TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.white);

class AppDrawer extends StatefulWidget {
  final Widget body;
  final BottomAppBar bottomAppBar;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Widget floatingActionButton;
  AppDrawer({
    this.body,
    this.bottomAppBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
  });
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    //final profileImage = ModalRoute.of(context).settings.arguments as String;
    // final pimage = Provider.of<PersonalInfoScreen>(context);

    return ScaledAnimatedScaffold(
      appBar: ScaledAnimatedScaffoldAppBar(
        title: Text("Home"),
      ),
      //backgroundColor: Colors.black87,

      menuConfiguration: ScaledAnimatedScaffoldMenuConfiguration(
        // BoxDecoration(gradient: LinearGradient(colors: [Colors.red])),
        backgroundColor: Colors.grey[600],

        header: ScaledAnimatedScaffoldMenuButton(
          label: Text(
            'Menu',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 50,
              backgroundImage: AssetImage("assets/logo.jpg"),
            ),
            Text(
              "User Name",
              style: textStyle,
            ),
            Padding(padding: EdgeInsets.only(bottom: 70)),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.home),
              label: Text(
                'Home',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.person),
              label: Text(
                'My profile',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.remove_red_eye_outlined),
              label: Text(
                'My watch',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.map),
              label: Text(
                'Map',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.description_rounded),
              label: Text(
                'FAQ',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.settings),
              label: Text(
                'Settings',
                style: textStyle,
              ),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(
                Icons.exit_to_app,
              ),
              label: Text(
                'Logout',
                style: textStyle,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: widget.body,
      bottomNavigationBar: widget.bottomAppBar,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}

//Drawer(
//   child: Stack(
//     children: [
//       Container(
//         height: deviceSize.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 Color.fromRGBO(33, 150, 243, 1),
//                 Color.fromRGBO(244, 67, 54, 1),
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               stops: [0, 1]),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               ListTile(
//                 contentPadding:
//                     EdgeInsets.only(left: 50, top: 50, bottom: 20),
//                 leading: Text(
//                   "Menu",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 40,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                   image: DecorationImage(
//                     image: ExactAssetImage("assets/logo.jpg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 contentPadding: EdgeInsets.only(left: 100),
//                 leading: Text(
//                   "User Name",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text(
//                   "Home",
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//               Divider(),
//               ListTile(
//                   leading: Icon(Icons.person),
//                   title: Text(
//                     'My profile',
//                     style: textStyle,
//                   ),
//                   onTap: () {}),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.remove_red_eye_outlined),
//                 title: Text(
//                   'My watch',
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.map),
//                 title: Text(
//                   'Map',
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.description_rounded),
//                 title: Text(
//                   'FAQ',
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text(
//                   'Settings',
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.exit_to_app),
//                 title: Text(
//                   'Logout',
//                   style: textStyle,
//                 ),
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// );
