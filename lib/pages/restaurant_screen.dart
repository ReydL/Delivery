
import 'dart:ui';

import 'package:delivery/widgets/top_row.dart';
import 'package:delivery/widgets/type_of_dish.dart';
import 'package:flutter/material.dart';

import '../widgets/flex_container.dart';
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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: TopRow(),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                RestaurantHead(),
                RestaurantDiscription(),
                SizedBox(height: 30,),
                TypeOfDish(),
                SizedBox(height: 29,),
                Row(
                  children: [
                    SizedBox(width: 12,),
                    Text('Бургеры',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 16,),
                  ],
                ),
                ColumnOfDishes(),

              ],
            ) ,
          )
        ],
      ),
    );
  }
}
