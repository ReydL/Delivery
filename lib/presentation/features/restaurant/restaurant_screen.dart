
import 'package:flutter/material.dart';

import '../../widgets/flex_container.dart';
import '../../widgets/restaurant_discription.dart';
import '../../widgets/restaurant_head.dart';
import '../../widgets/top_row.dart';
import '../../widgets/type_of_dish.dart';


class RestaurantScreen extends StatelessWidget {
  final String name;
  final String typeOfKitchen;
  final String? timeOfDel;
  final String? costOfDel;
  const RestaurantScreen({Key? key,required this.name,required this.typeOfKitchen, this.timeOfDel, this.costOfDel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
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
                RestaurantDiscription(name: this.name,discription: this.typeOfKitchen,timeOfDel: this.timeOfDel,costOfDel: this.costOfDel,),
                SizedBox(height: 30,),
                TypeOfDish(),
                SizedBox(height: 29,),
                Row(
                  children: [
                    SizedBox(width: 12,),
                    Text('Бургеры',
                        style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w700)),
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


