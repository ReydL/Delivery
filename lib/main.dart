import 'package:delivery/config/app_theme.dart';
import 'package:delivery/config/theme_provider.dart';
import 'package:delivery/pages/settings_page.dart';


import 'package:delivery/widgets/bottom_navigation.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder:(context,_) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: LightAppTheme.of(context),
        darkTheme: DarkAppTheme.of(context),
        routes: {
          '/': (context) => MyBottomNavigationBar(),
          '/restaurant': (context) => RestaurantScreen(),
          '/settings': (context) => SettingsPage(),
        },
      );}
    );
  }

}
