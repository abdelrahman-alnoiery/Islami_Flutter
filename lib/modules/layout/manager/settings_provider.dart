import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String language='en';
  ThemeMode themeMode=ThemeMode.light;
  void changelanguage(String lang){
    language= lang;
    notifyListeners();

  }
  changeTheme(ThemeMode Theme){
    themeMode= Theme;
    notifyListeners();

  }
}