

import 'package:flutter/material.dart';

class RestaurantDiscription extends StatelessWidget {
  final String name;
  final String discription;
  final String? timeOfDel;
  final String? costOfDel;
  const RestaurantDiscription({Key? key,required this.name,required this.discription, this.timeOfDel, this.costOfDel}) : super(key: key);

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
            this.name,
            style: theme.textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          Text(
            this.discription,
            style: theme.textTheme.subtitle1,
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
                child: Text(this.timeOfDel ?? '',
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
                child: Text(this.costOfDel ?? '',
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
