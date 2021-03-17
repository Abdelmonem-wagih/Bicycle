import 'package:Project/providers/providerHome.dart';
import 'package:Project/widgets/ProviderGrid.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

enum ChangeClass { Screen1, Screen2, Screen3 }

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 1);
  String image = "assets/screen1.jpg";

  @override
  Widget build(BuildContext context) {
    final post = Provider.of<ProviderHome>(context);

    return
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(35, 35, 35, 1),
        // ),
        //drawer: AppDrawer(),
        CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          excludeHeaderSemantics: false,
          // pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            // titlePadding: EdgeInsetsDirectional.only(bottom: 20),
            background: Image.asset(
              "assets/screen1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, i) => ProviderGrid(),
            childCount: 1,
          ),
        ),
      ],
    );
  }
}

// DefaultTabController(
//   initialIndex: 0,
//   length: 3,

//   child: PageView.builder(
//     itemCount: 3,
//     itemBuilder: (context, index) => Container(
//       margin: EdgeInsets.only(bottom: 350),
//       height: deviceSize.height * 0.1,
//       width: deviceSize.width,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: ExactAssetImage(image),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(110),
//           bottomRight: Radius.circular(110),
//         ),
//       ),
//     ),
//     controller: controller,
//     onPageChanged: (value) {
//       if (value == 0) {
//         setState(() {
//           image = "assets/screen1.jpg";
//         });
//       }
//       if (value == 1) {
//         setState(() {
//           image = "assets/screen2.jpg";
//         });
//       }
//       if (value == 2) {
//         setState(() {
//           image = "assets/screen3.jpg";
//         });
//       }
//     },
//   ),
// ),

//  Directionality(

//   textDirection: TextDirection.ltr,
//   child: Stack(
//     children: <Widget>[
//       SizedBox(
//         height: 300,
//         child: PageView(
//           controller: controller,
//           children: List.generate(
//             3,
//             (_) => Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40),
//                   bottomRight: Radius.circular(40),
//                 ),
//               ),
//               child: null,
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
