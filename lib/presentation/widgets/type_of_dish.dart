
import 'package:flutter/material.dart';

class TypeOfDish extends StatelessWidget {
  const TypeOfDish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 20,),
          MyType('Бургер'),
          MyType('Картошка'),
          MyType('Бургер'),
          MyType('Картошка'),
          MyType('Бургер'),


        ],
      ),
    );
  }
}

class MyType extends StatelessWidget {

  String type = ' ';
  MyType(this.type){
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(right: 7),

      alignment: Alignment.center,
      height: 41,
      width: 97,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: Colors.black12),
      ),
      child: Text(this.type,
      style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
