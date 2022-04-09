import 'package:flutter/material.dart';

class GreyContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16,),
          MyGreyContainer(),
          MyGreyContainer(),
          MyGreyContainer(),
          MyGreyContainer(),
        ],
      ),
    );
  }
}

class MyGreyContainer extends StatelessWidget {
  const MyGreyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 121,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin:const EdgeInsets.only(right: 7),
    );
  }
}

