import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home/homescreen.dart';
import 'package:instagram_clone/screens/post/postscreen.dart';
import 'package:instagram_clone/screens/profile/profilescreen.dart';
import 'package:instagram_clone/screens/reels/reelsscreen.dart';
import 'package:instagram_clone/screens/search/searchscreen.dart';
import 'package:instagram_clone/widgets/uihelper.dart';


class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    Searchscreen(),
    Container(),
    Reelsscreen(),
    Profilescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,

        onTap: (index) {
          if (index == 2) {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.black,
              builder:(_) => const Postscreen(),
            );
          }else{
          setState(() =>
            currentIndex = index);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(
              icon:  Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(
              icon:  Icon(CupertinoIcons.plus_app),label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_circle),label: "reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}