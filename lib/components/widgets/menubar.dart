// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../screen/chatscreen.dart';
import '../../screen/diaryscreen.dart';
import '../../screen/homescreen.dart';
import '../../screen/servicescreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _navigateButtomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _Screens = [
    const Homescreen(),
    const ChatScreen(),
    const ServiceScreen(), //services
    DiaryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateButtomNavBar,
        type: BottomNavigationBarType.fixed,
      
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.indigoAccent,
            ),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_text_fill,
              color: Colors.tealAccent
            ),
            label: "Chat"
          ),
          BottomNavigationBarItem(
            
            icon: Icon(
              Icons.near_me_rounded,
              color: Colors.orangeAccent,
            ),
            label: "Nearby Doc"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_rounded,
              color: Colors.blueAccent,
            ),
            label: "Diary"
          ),
        ]
      ),
    );
  }
}