import 'package:flutter/material.dart';

import 'package:abstract_coder/utils/storage_manager.dart';

class ThemeNotifier with ChangeNotifier {
  final lightTheme = ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.white,
      splashColor: Colors.purple,
      backgroundColor: Color(0xffF1F5FB),
      indicatorColor: Color(0xffCBDCF8),
      buttonColor: Color(0xffF1F5FB),
      hintColor: Color(0xffEECED3),
      highlightColor: Color(0xffFCE192),
      focusColor: Color(0xffA8DAB5),
      dialogBackgroundColor: Color(0xFFFFFFFF),
      disabledColor: Colors.grey,
      // ignore: deprecated_member_use
      textSelectionColor: Colors.black,
      bottomAppBarColor: Colors.black54,
      cardColor: Color(0xFF39FF14), 
      canvasColor: Colors.grey[50],
      brightness: Brightness.light,
      accentColor: Colors.black,
      // ignore: deprecated_member_use
      cursorColor: Color(0xFFFFFFFF),
      //content page background color
      dividerColor: Color(0xffF5F5F5),
      //theme icon button color
      errorColor: Color(0xFFFFFFFF));

  final darkTheme = ThemeData(
      primarySwatch: Colors.blueGrey,
      // ignore: deprecated_member_use
      cursorColor: Color(0xff2A2E35),
      dialogBackgroundColor: Color(0xff2A2E35),
      primaryColor: Color(0xff12181B),
      backgroundColor: Colors.black,
      indicatorColor: Color(0xff0E1D36),
      buttonColor: Color(0xff3B3B3B),
      hintColor: Color(0xff280C0B),
      highlightColor: Color(0xff372901),
      hoverColor: Color(0xff3A3A3B),
      focusColor: Color(0xff0B2512),
      disabledColor: Colors.grey,
      accentColor: Colors.white,
      bottomAppBarColor: Colors.white54,
      // ignore: deprecated_member_use
      textSelectionColor: Colors.white,
      canvasColor: Colors.black,
      brightness: Brightness.dark,
      //content page background color
      dividerColor: Color(0xff12181B),
      //theme icon button color
      errorColor: Color(0xff2A2E35),
      cardColor: Color(0xFFFFD700));

  ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  ThemeNotifier(
    this._themeData,
  ) {
    StorageManager.readData('themeMode').then((value) {
      print('value read from storage: ' + value.toString());
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        print('setting dark theme');
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }
  void setDarkMode() async {
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }
}
