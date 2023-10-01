import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  Color _seedColor = Colors.black;
  ThemeChanger();

  get getSeedColor => _seedColor;
  void setSeedColor(Color theme) {
    _seedColor = theme;
    notifyListeners();
  }
}
