import 'package:Project/screen/home_screen.dart';
import 'package:Project/screen/profile_screen.dart';
import 'package:Project/screen/share_post_screen.dart';
import 'package:Project/screen/splash_screen.dart';
import 'package:Project/widgets/appDrawer.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const routeName = "/botom-bar";
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        "page": HomeScreen(),
      },
      {
        "page": SplashScreen(),
      },
      {
        "page": SharePostScreen(),
      },
      {
        "page": ProfileScreen(),
      },
      {
        "page": SplashScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppDrawer(
      body: _pages[_selectedPageIndex]["page"],
      bottomAppBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Colors.green,
              selectedItemColor: Color.fromRGBO(244, 67, 54, 1),
              unselectedItemColor: Color.fromRGBO(33, 150, 243, 1),
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded),
                  title: Text("Offers"),
                ),
                BottomNavigationBarItem(
                  // activeIcon: null,
                  title: Text("post"),
                  icon: Icon(null),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.format_align_right),
                  title: Text("More"),
                ),
              ],
            ),
          ),
        ),
      ),
      //to locate float bottom in contanier
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromRGBO(33, 150, 243, 1),
                Color.fromRGBO(244, 67, 54, 1),
              ])),
          child: Center(
            child: FlatButton(
              padding: EdgeInsets.all(1),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              onPressed: () => setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => SharePostScreen(),
                  ),
                );
              }),
            ),
          ),
        ),

        // RaisedButton(
        //   //shape: BorderRadius.circular(),
        //   hoverElevation: 10,
        //   hoverColor: Colors.red,
        //   elevation: 4,
        //   child: Icon(Icons.add),
        //   onPressed: () => setState(() {
        //     _selectedPageIndex = 2;
        //   }),
        // ),
      ),
    );
  }
}
