import 'package:assignment/presentation/UI/Screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class InternTask extends StatelessWidget {
  const InternTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "InternTask",
      debugShowCheckedModeBanner: false,
      home: MainNavBottomScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            backgroundColor:  Color(0xFFE94057),
            textStyle:
            const TextStyle(color: Colors.white,
                fontSize: 16,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );

  }
}
