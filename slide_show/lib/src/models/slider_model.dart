import 'package:flutter/widgets.dart';

class SliderModel with ChangeNotifier {
  double _currentPage = 0;

  double get currentPage => this._currentPage;
  set currentPage(double currentpage) {
    this._currentPage = currentpage;
    notifyListeners();
  }
}
