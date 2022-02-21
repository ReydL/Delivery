
import 'package:delivery/widgets/top_row.dart';
import 'package:flutter/material.dart';

import '../widgets/restaurant_discription.dart';
import '../widgets/restaurant_head.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  TopRow(),
                  RestaurantHead(),
                  RestaurantDiscription()

                ],
              ) ,
            )
          ],
        )
      ),
    );
  }
}
