import 'package:flutter/material.dart';

import 'bottom_burger_sheet.dart';

class ColumnOfDishes extends StatefulWidget {
  const ColumnOfDishes({Key? key}) : super(key: key);

  @override
  _ColumnOfDishesState createState() => _ColumnOfDishesState();
}

class _ColumnOfDishesState extends State<ColumnOfDishes> {
  final List<MyFlexContainerData> listofDishes = [
    MyFlexContainerData(
        image: 'assets/images/Burger.png',
        nameofDish: 'Воппер',
        descriptionOfDish: 'Мягкая булочка и мясо ',
        costOfDish: '500 '),
    MyFlexContainerData(
        image: 'assets/images/Burger.png',
        nameofDish: 'Чизбургер',
        descriptionOfDish: 'Мягкая булочка и сыр ',
        costOfDish: '450 '),
    MyFlexContainerData(
        image: 'assets/images/Burger.png',
        nameofDish: 'бургер',
        descriptionOfDish: 'Мягкая булочка и котлета ',
        costOfDish: '450 '),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ...listofDishes.map((data) => MyFlexContainer(data: data)),
      ],
    );
  }
}

class MyFlexContainerData {
  final String image;
  final String nameofDish;
  final String descriptionOfDish;
  final String costOfDish;

  MyFlexContainerData(
      {required this.image,
      required this.nameofDish,
      required this.descriptionOfDish,
      required this.costOfDish});
}

class MyFlexContainer extends StatelessWidget {
  //bool isPressed = false;
  // bool value = false;
  final MyFlexContainerData data ;

   const MyFlexContainer({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 116,
            height: 83,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                      child: Text(
                        data.nameofDish,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () => showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                        context: context,
                        builder: (context) => BuildBurgerBottomSheet(),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(data.costOfDish),
                    Text('  Р'),
                  ],
                ),
                Text(
                  data.descriptionOfDish,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    primary: Colors.black,
                    minimumSize: Size(103, 39),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                  child: const Text('Добавить'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
