import 'package:flutter/material.dart';

class CardsBurger extends StatefulWidget {


  @override
  State<CardsBurger> createState() => _CardsBurgerState();
}

class _CardsBurgerState extends State<CardsBurger> {

  final List<DescriptionData> description =[
      DescriptionData(image: 'assets/images/Rectangle.png',
          nameOfRestaurant: 'BurgerKing', typeOfKitchen: 'Американская кухня', logo: 'assets/images/BKlogo.png'),
    DescriptionData(image: 'assets/images/Rectangle.png',
        nameOfRestaurant: 'BurgerKing', typeOfKitchen: 'Американская кухня', logo: 'assets/images/BKlogo.png'),
    DescriptionData(image: 'assets/images/Rectangle.png',
        nameOfRestaurant: 'РафБургерс', typeOfKitchen: 'Татарская кухня', logo: 'assets/images/BKlogo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...description.map((data) => Description(data: data)).toList(), //Место ошибки
          ],
        ));
  }
}
class DescriptionData{
  final String image;
  final String logo;
  final String nameOfRestaurant;
  final String typeOfKitchen;

  DescriptionData({required this.image,required this.logo, required this.nameOfRestaurant,required this.typeOfKitchen});
}

class Description extends StatelessWidget {

  final DescriptionData data;


  const Description({Key? key,required this.data }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/restaurant');
      },
      child: Container(
        width: 315,
        height: 230,
        margin: EdgeInsets.only(
          left: 6,
          top: 8,
          right: 7,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Card(
          child: Column(
            children: [
              Container(
                width: 303,
                height: 127,
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image:  DecorationImage(
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
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image:  DecorationImage(
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
            ],
          ),
        ),
      ),
    );
  }
}
