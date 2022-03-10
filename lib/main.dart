import 'package:delivery/config/app_theme.dart';


import 'package:delivery/widgets/bottom_navigation.dart';

import 'package:flutter/material.dart';

import 'pages/restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DeliveryAppTheme.of(context),
      routes: {
        '/': (context) => MyBottomNavigationBar(),
        '/restaurant': (context) => RestaurantScreen(),
      },
      //home: IfRender(),
    );
  }
}
