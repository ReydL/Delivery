import 'dart:ui';

import 'package:flutter/material.dart';

class RestaurantDiscription extends StatelessWidget {
  const RestaurantDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      height: 110,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Burger King',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Большой выбор бургеров, картошки\n и прочего, что вам нравится',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12,),
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
                child: Text('10-20 минут',
                  style:TextStyle(
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
                child: Text('Доставка: 100 Р',
                  style:TextStyle(
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
