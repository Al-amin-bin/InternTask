import 'package:assignment/presentation/UI/Screens/Friend_screen.dart';
import 'package:assignment/presentation/UI/Screens/massage_screen.dart';
import 'package:assignment/presentation/UI/Screens/passion_screen.dart';

import 'package:assignment/presentation/UI/Screens/profile_screen.dart';
import 'package:assignment/presentation/UI/Screens/swap_right_screen.dart';
import 'package:flutter/material.dart';

class MainNavBottomScreen extends StatefulWidget {
  const MainNavBottomScreen({super.key});

  @override
  State<MainNavBottomScreen> createState() => _MainNavBottomScreenState();
}

class _MainNavBottomScreenState extends State<MainNavBottomScreen> {
  int _currentIndex = 0;
  List _screen= [
    SwapRightScreen(),
    PassionScreen(),
    MassageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex ,
        onTap:(value){
          _currentIndex = value;
          setState(() {
          });
        },
        selectedItemColor:Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
         BottomNavigationBarItem(icon:  Image.asset("assets/images/icon/Group 25.png",),label: ""),
         BottomNavigationBarItem(icon:  Image.asset("assets/images/icon/indicator.png",),label: ""),
         BottomNavigationBarItem(icon:  Image.asset("assets/images/icon/message.png",color: Colors.grey,),label: ""),
         BottomNavigationBarItem(icon:  Image.asset("assets/images/icon/people.png",),label: ""),
         //  BottomNavigationBarItem(icon:  Icon(Icons.list_alt_outlined),label: ""),
         // BottomNavigationBarItem(icon:  Icon(Icons.mobile_friendly),label: ""),
         // BottomNavigationBarItem(icon:  Icon(Icons.message),label: ""),
         // BottomNavigationBarItem(icon:  Icon(Icons.person),label: ""),

    ],
    ),
    );
  }
}
