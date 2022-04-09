import 'package:flutter/material.dart';

class Recomindation extends StatelessWidget {
  final List<RecBoxData> recBoxList = [
    RecBoxData(
        text: 'Доставка \n 30 минут', image: 'assets/images/Deliver.png'),
    RecBoxData(text: 'Грузинская кухня', image: 'assets/images/DIsh.png'),
    RecBoxData(
        text: 'Доставка \n 30 минут', image: 'assets/images/Deliver.png'),
    RecBoxData(text: 'Грузинская кухня', image: 'assets/images/DIsh.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...recBoxList.map((data) => RecBox(data: data)),
        ],
      ),
    );
  }
}

class RecBoxData {
  final String text;
  final String image;

  RecBoxData({required this.text, required this.image});
}

class RecBox extends StatelessWidget {
  final RecBoxData data;

  const RecBox({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 86,
          height: 86,
          margin: const EdgeInsets.only(left: 11, top: 29, right: 11, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: AssetImage(data.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          data.text,
          style: theme.textTheme.subtitle1,
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ],
    );
  }
}
