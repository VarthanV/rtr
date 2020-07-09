import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './home.dart';
import './gallery.dart';
import './media.dart';
import './blog.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;

  List<Widget> _children = [
    HomePage(),GalleryPage(),MediaPage(),BlogPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F1F6),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/menu.png"),
          onPressed: () {},
        ),
        elevation: 2,
        backgroundColor: Color(0xFFF0F1F6),
        title: Text(
          "CBE Unique",
          style: TextStyle(
              color: Color(0xFF025DA9),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                icon: Badge(
                  badgeContent: Text(
                    "5",
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xFF8D929B),
                  ),
                ),
                onPressed: () {}),
          )
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFF8D929B),
                  size: 30,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 16, color: Color(0xFF313C4A)),
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xFF313C4A),
                  size: 30,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections,
                  color: Color(0xFF8D929B),
                  size: 30,
                ),
                title: Text("Gallery",
                    style: TextStyle(fontSize: 16, color: Color(0xFF313C4A))),
                activeIcon: Icon(
                  Icons.collections,
                  color: Color(0xFF313C4A),
                  size: 30,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.live_tv,
                  color: Color(0xFF8D929B),
                  size: 30,
                ),
                title: Text(
                  "Media",
                  style: TextStyle(fontSize: 16, color: Color(0xFF313C4A)),
                ),
                activeIcon: Icon(
                  Icons.live_tv,
                  color: Color(0xFF313C4A),
                  size: 30,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.rss_feed,
                  color: Color(0xFF8D929B),
                  size: 30,
                ),
                title: Text(
                  "Blog",
                  style: TextStyle(fontSize: 16, color: Color(0xFF313C4A)),
                ),
                activeIcon: Icon(
                  Icons.rss_feed,
                  color: Color(0xFF313C4A),
                  size: 30,
                ))
          ]),
    );
  }
}
