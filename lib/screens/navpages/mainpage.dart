import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/navpages/bookmark.dart';
import 'package:ecommerce_app/screens/navpages/notification.dart';
import 'package:ecommerce_app/screens/navpages/profile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomeScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  int cIndex = 0;
  void onTap(int index) {
    setState(() {
      cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[cIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          backgroundColor: Color(0xFF201C2C),
          currentIndex: cIndex,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF201C2C),
                label: ("Home"),
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: ("Notification"), icon: Icon(Icons.notifications)),
            BottomNavigationBarItem(
                label: ("Bookmark"), icon: Icon(Icons.bookmark)),
            BottomNavigationBarItem(
                label: ("Profile"), icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
    ;
  }
}
