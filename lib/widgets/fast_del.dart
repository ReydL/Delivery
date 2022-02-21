import 'package:flutter/material.dart';

class FastDel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MyCategory(),
          MyCategory(),
          MyCategory(),
          MyCategory(),
        ],
      ),
    );
  }
}

class MyCategory extends StatelessWidget {
  const MyCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 41,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      margin: EdgeInsets.only(left: 16, right: 7),
      child: Text(
        'Быстрая доставка',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Nunito',
        ),
      ),
    );
  }
}
