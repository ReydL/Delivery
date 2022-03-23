import 'package:delivery/config/user_preference.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  SharedPreferences? prefs;
  ThemeMode themeMode = ThemeMode.dark;

  ThemeProvider(){
    loadTheme();
    print("loadtheme");
  }

  bool get isDarkMode => themeMode == ThemeMode.dark;

  initialize() async{
    if(prefs == null)
    prefs = await SharedPreferences.getInstance();
}
  loadTheme() async{
    await initialize();
    prefs?.getBool(PreferenceKeys.themeMode);
    notifyListeners();
  }

  saveTheme() async{
    await initialize();
    prefs?.setBool(PreferenceKeys.themeMode, isDarkMode);
    print(isDarkMode);
  }

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    saveTheme();
    notifyListeners();
  }
}