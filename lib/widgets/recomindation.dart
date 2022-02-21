import 'package:flutter/material.dart';

class Recomindation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RecBox(),
          RecBox2(),
          RecBox(),
          RecBox2(),
          RecBox(),
        ],
      ),
    );
  }
}

class RecBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Container(
              width: 86,
              height: 86,
              margin: EdgeInsets.only(left: 11,top: 29,right: 11,bottom: 5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage('assets/images/Deliver.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text('Доставка \n 30 минут',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
            ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}

class RecBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Container(
              width: 86,
              height: 86,
              margin: EdgeInsets.only(left: 11,top: 29,right: 11,bottom: 5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage('assets/images/DIsh.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text('Настроение \n Грузии',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
            ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}