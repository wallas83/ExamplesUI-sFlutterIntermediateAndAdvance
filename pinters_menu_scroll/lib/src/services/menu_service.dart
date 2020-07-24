import 'package:flutter/widgets.dart';

class MenuService with ChangeNotifier {
  MenuService();
  int _itemSeleccionado = 0;

  int get itemSeleccionado => this._itemSeleccionado;

  set itemSeleccionado(int index) {
    this._itemSeleccionado = index;
    notifyListeners();
  }
}
