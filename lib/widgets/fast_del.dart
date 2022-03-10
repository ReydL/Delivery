import 'package:flutter/material.dart';

class FastDel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16,),
          MyCategory(text: 'Быстрая доставка',),
          MyCategory(text: 'Быстрая доставка',),
          MyCategory(text: 'Быстрая доставка',),
          MyCategory(text: 'Быстрая доставка',),
        ],
      ),
    );
  }
}

class MyCategory extends StatelessWidget {
  final String text;
  const MyCategory({Key? key,
  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 163,
      height: 41,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12,width: 1),
        color: Colors.white70,
      ),
      margin: EdgeInsets.only(right: 7),
      child: Text(
        text,
        style: theme.textTheme.bodyText1,
      ),
    );
  }
}
