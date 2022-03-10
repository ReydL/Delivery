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
        costOfDish: '500 ', fullDescriptionOfDish: 'Мягкая булочка и мясо в сочнейшем соке помидор и базилика'),
    MyFlexContainerData(
        image: 'assets/images/Burger.png',
        nameofDish: 'Чизбургер',
        descriptionOfDish: 'Мягкая булочка и сыр ',
        costOfDish: '450 ', fullDescriptionOfDish: 'Мягкая булочка и мясо в сочнейшем соке помидор и базилика'),
    MyFlexContainerData(
        image: 'assets/images/Burger.png',
        nameofDish: 'бургер',
        descriptionOfDish: 'Мягкая булочка и котлета ',
        costOfDish: '450 ', fullDescriptionOfDish: 'Мягкая булочка и мясо в сочнейшем соке помидор и базилика'),
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
  final String fullDescriptionOfDish;
  final String costOfDish;
  bool isPressed = true;

  MyFlexContainerData(
      {required this.image,
      required this.nameofDish,
      required this.descriptionOfDish,
      required this.costOfDish, required this.fullDescriptionOfDish});
}

class MyFlexContainer extends StatefulWidget {
  final MyFlexContainerData data;

  const MyFlexContainer({Key? key, required this.data}) : super(key: key);

  @override
  State<MyFlexContainer> createState() => _MyFlexContainerState();
}

class _MyFlexContainerState extends State<MyFlexContainer> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              context: context,
              builder: (context) => BuildBurgerBottomSheet(),
            ),
            child: Container(
              width: 116,
              height: 83,
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.data.image),
                  fit: BoxFit.cover,
                ),
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
                        widget.data.nameofDish,
                        style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
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
                    Text(widget.data.costOfDish),
                    Text('  Р'),
                  ],
                ),

                (widget.data.isPressed ?
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.descriptionOfDish,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: theme.textTheme.subtitle1,
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
                      child:  Text('Добавить', style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w400),),
                      onPressed: () {
                        setState(() {
                          widget.data.isPressed = false;
                        });
                      },
                    ),
                  ],
                )
                : Column(
                  children: [
                    Text(
                      widget.data.fullDescriptionOfDish,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: theme.textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.remove, color: Colors.black,),
                          ),
                        ),
                        SizedBox(width: 14,),
                        Text('1'),
                        SizedBox(width: 14,),
                        Container(
                          alignment: Alignment.center,
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add, color: Colors.black,),
                          ),
                        ),
                        SizedBox(width: 14,),
                        Container(
                          alignment: Alignment.center,
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                widget.data.isPressed = true;
                              });
                            },
                            icon: Icon(Icons.close, color: Colors.black,),
                          ),)
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
