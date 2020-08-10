import 'package:animatedDo/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Do',
      debugShowCheckedModeBanner: false,
      home:
          //TwitterPage(),
          HomePage(),
        //NavegacionPage()
    );
  }
}
