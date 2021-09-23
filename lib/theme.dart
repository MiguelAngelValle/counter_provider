import 'package:flutter/material.dart';

class themeChanger with ChangeNotifier {
  ThemeData _themeData;

  themeChanger(this._themeData);

  gatTheme() => _themeData;

  setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}
