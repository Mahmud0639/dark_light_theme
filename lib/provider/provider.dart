import 'package:dark_light_theme/shared_singleton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderTry extends ChangeNotifier{
  bool _isDark = false;
  bool get isDark => _isDark;

  late SharedPreferences prefs;

  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorDark: Colors.white
  );

  changeTheme()async{
    _isDark = !_isDark;
    prefs.setBool("isDark", _isDark);
    notifyListeners();
  }

  init()async{
    prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool("isDark")??false;
    notifyListeners();
  }
}