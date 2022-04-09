

import 'package:delivery/domain/entities/restaurant_entity.dart';
import 'package:flutter/material.dart';

class RestaurantDescription extends StatelessWidget {
  final RestaurantEntity restaurant;
  const RestaurantDescription({Key? key,required this.restaurant,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(

      alignment: Alignment.center,
      height: 110,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            restaurant.nameOfRestaurant,
            style: theme.textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          Text(
            restaurant.typeOfKitchen,
            style: theme.textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 91,
                height: 23,
                margin: EdgeInsets.only(left: 12,right: 7),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:  Text( restaurant.timeOfDel ?? '',
                  style: const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14,
                    color: Colors.white,
                  ) ,),
              ),
              Container(
                alignment: Alignment.center,
                width: 136,
                height: 23,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:  Text(restaurant.costOfDel ?? '',
                  style:const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14,
                    color: Colors.white,
                  ) ,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
