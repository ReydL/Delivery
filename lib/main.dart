
import 'package:delivery/widgets/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/main_screen.dart';
import 'pages/restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyBottomNavigationBar(),
        '/restaurant': (context) => RestaurantScreen(),
      },
    );
  }
}


