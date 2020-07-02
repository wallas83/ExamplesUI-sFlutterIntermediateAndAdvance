//import 'package:custom_painter/src/pages/animaciones_page.dart';
import 'package:custom_painter/src/labs/circular_progres_page.dart';
import 'package:custom_painter/src/pages/graficas_circulares_page.dart';
//import 'package:custom_painter/src/retos/cuadrad_animado.dart';
//import 'package:custom_painter/src/pages/header_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenho App',
      home: GraficasCircularesPage(),
    );
  }
}
