import 'package:flutter/material.dart';

import 'screens/home_screen/home_screen.dart';

class BuyEasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buy Easy',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color(0xFFDFDFDF)),
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          caption: TextStyle(
            color: Color(0xFFDFDFDF),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
