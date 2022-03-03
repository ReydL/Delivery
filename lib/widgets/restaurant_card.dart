import 'package:flutter/material.dart';

class ListOfRestaurantCard extends StatelessWidget {

  final List<RestaurantCardData> cards = [
    RestaurantCardData(image: 'assets/images/Rectangle.png', logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',typeOfKitchen:  'Американская кухня',
        timeOfDelivery:  '10-20 минут', costOfDelivery: 'Доставка: 100 Р'),
    RestaurantCardData(image: 'assets/images/Rectangle.png', logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',typeOfKitchen:  'Американская кухня',
        timeOfDelivery:  '15-20 минут', costOfDelivery: 'Доставка: 200 Р'),
    RestaurantCardData(image: 'assets/images/Rectangle.png', logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',typeOfKitchen:  'Американская кухня',
        timeOfDelivery:  '15-30 минут', costOfDelivery: 'Доставка: 150 Р'),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map((data) => RestaurantCard(data: data)),
      ],
    );
  }
}

class RestaurantCardData {
  final String image;
  final String logo;
  final String nameOfRestaurant;
  final String typeOfKitchen;
  final String timeOfDelivery;
  final String costOfDelivery;

  RestaurantCardData({required this.image,required this.logo,required this.nameOfRestaurant,
     required this.typeOfKitchen,required this.timeOfDelivery,required this.costOfDelivery});
}

class RestaurantCard extends StatelessWidget {
  final RestaurantCardData data;

  const RestaurantCard({Key? key,required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 260,
      margin: EdgeInsets.only(
        left: 6,
        bottom: 6,
        right: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/restaurant');
        },
        child: Card(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 351,
                  height: 127,
                  margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      image: AssetImage(data.image),
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
                            image: AssetImage(data.logo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      data.nameOfRestaurant,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      data.typeOfKitchen,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    trailing: Icon(Icons.attach_money),
                  ),
                ),
                Container(
                  child: Row(
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
                          data.timeOfDelivery,
                          style: TextStyle(
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
                          data.costOfDelivery,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
