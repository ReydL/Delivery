import 'package:flutter/material.dart';

class GreyContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MyGreyConteiner(),
          MyGreyConteiner(),
          MyGreyConteiner(),
          MyGreyConteiner(),
        ],
      ),
    );
  }
}

class MyGreyConteiner extends StatelessWidget {
  const MyGreyConteiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(16, 14, 7, 19),
      margin: EdgeInsets.fromLTRB(16, 14, 7, 19),
    );
  }
}

