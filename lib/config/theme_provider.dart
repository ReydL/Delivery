import 'package:delivery/config/user_preference.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  SharedPreferences? prefs;
  bool _themeMode = false;

  ThemeProvider(){
    loadTheme();
  }

  bool get isDarkMode => _themeMode;

  initialize() async{
    if(prefs == null)
    prefs = await SharedPreferences.getInstance();
}
  loadTheme() async{
    await initialize();
    _themeMode = prefs?.getBool(PreferenceKeys.themeMode) ?? true;
    notifyListeners();
  }

  saveTheme() async{
    await initialize();
    prefs?.setBool(PreferenceKeys.themeMode, isDarkMode);

  }

  void toggleTheme(bool isOn){
    _themeMode = isOn;
    saveTheme();
    notifyListeners();
  }
}