import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MenuMostrar with ChangeNotifier {
  MenuMostrar();
  bool _mostrar = true;
  Color activeColor = Colors.red;
  Color backgroundColor = Colors.blueGrey;
  Color inactiveColor = Colors.white;

  bool get mostrarGet => this._mostrar;

  set mostrarSet(bool valor) {
    this._mostrar = valor;
    notifyListeners();
  }
}
