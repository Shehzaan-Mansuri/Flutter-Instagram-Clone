import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:instagram_clone/pages/account.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30.0, color: Colors.black,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30.0, color: Colors.black,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_rounded, size: 30.0, color: Colors.black,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, size: 30.0, color: Colors.black,), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.circle_fill, size: 30.0, color: Colors.black,), label: ''),
        ],
      ),
    );
  }
}
