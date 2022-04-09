import 'package:delivery/domain/entities/restaurant_entity.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/flex_container.dart';
import '../../widgets/restaurant_discription.dart';
import '../../widgets/restaurant_head.dart';
import '../../widgets/top_row.dart';
import '../../widgets/type_of_dish.dart';

class RestaurantScreen extends StatelessWidget {
  final RestaurantEntity restaurant;
  const RestaurantScreen(
      {Key? key,required this.restaurant,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: theme.backgroundColor,
        title: TopRow(),
      ),
      body: ListView(
        children: [
          const RestaurantHead(),
          RestaurantDescription(restaurant: restaurant,),
          const SizedBox(
            height: 30,
          ),
          const TypeOfDish(),
          const SizedBox(
            height: 29,
          ),
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              Text('Бургеры',
                  style: theme.textTheme.bodyText1!
                      .copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
           ColumnOfDishes(dishes: restaurant.dishes,),
        ],
      ),
    );
  }
}
