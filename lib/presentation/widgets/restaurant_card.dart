import 'package:delivery/domain/entities/restaurant_entity.dart';
import 'package:flutter/material.dart';

import '../../data/repositories/restaurant_repository.dart';
import '../features/restaurant/restaurant_screen.dart';

class ListOfRestaurantCard extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...RestaurantsDataStorage().allRestaurants.map((data) => RestaurantCard(restaurant: data)),
      ],
    );
  }
}


class RestaurantCard extends StatelessWidget {
  final RestaurantEntity restaurant;

  const RestaurantCard({Key? key,required this.restaurant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 363,
      height: 260,
      margin: const EdgeInsets.only(
        left: 6,
        bottom: 6,
        right: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RestaurantScreen(restaurant: restaurant,)));
        },
        child: Card(
          color: theme.bottomNavigationBarTheme.backgroundColor,
          child: Column(
            children: [
              Container(
                width: 351,
                height: 127,
                margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    image: AssetImage(restaurant.image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage(restaurant.logo ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  restaurant.nameOfRestaurant,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  restaurant.typeOfKitchen,
                  style:const  TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                  ),
                ),
                trailing: const Icon(Icons.attach_money),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 91,
                    height: 23,
                    margin: EdgeInsets.only(left: 12, right: 7),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      restaurant.timeOfDel ?? '',
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 136,
                    height: 23,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      restaurant.costOfDel ?? '',
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
