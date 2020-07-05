import 'package:flutter/material.dart';
//import 'package:slide_show/src/labs/slide_show_page.dart';
import 'package:slide_show/src/pages/slideshow_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slide Show',
      home: SlideshowPage(),
    );
  }
}
