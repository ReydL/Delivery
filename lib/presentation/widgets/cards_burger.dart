import 'package:delivery/data/repositories/restaurant_repository.dart';
import 'package:delivery/domain/entities/restaurant_entity.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_screen.dart';
import 'package:flutter/material.dart';

class CardsBurger extends StatefulWidget {
  const CardsBurger({Key? key}) : super(key: key);

  @override
  State<CardsBurger> createState() => _CardsBurgerState();
}

class _CardsBurgerState extends State<CardsBurger> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: RestaurantsDataStorage().popularRestaurants.length,
          itemBuilder: (context,index) => Description(restaurant: RestaurantsDataStorage().popularRestaurants[index]),
        ));
  }
}



class Description extends StatelessWidget {
  final RestaurantEntity restaurant;

  const Description({Key? key, required this.restaurant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {

        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RestaurantScreen(restaurant: restaurant,)));
      },
      child: Container(
        width: 315,
        height: 230,
        margin: const EdgeInsets.only(
          left: 6,
          top: 8,
          right: 7,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Card(
          color: theme.bottomNavigationBarTheme.backgroundColor,
          child: Column(
            children: [
              Container(
                width: 303,
                height: 127,
                margin: EdgeInsets.all(6),
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
                      margin: const EdgeInsets.all(6),
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
                  style: theme.textTheme.bodyText1!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  restaurant.typeOfKitchen,
                  style: theme.textTheme.subtitle1,
                ),
                trailing: const Icon(Icons.attach_money),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
