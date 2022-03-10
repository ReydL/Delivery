import 'package:flutter/material.dart';

import '../widgets/cards_burger.dart';
import '../widgets/fast_del.dart';
import '../widgets/grey_containers.dart';
import '../widgets/recomindation.dart';
import '../widgets/restaurant_card.dart';
import '../widgets/top_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar:AppBar(
        backgroundColor: theme.backgroundColor,
        title: TopRow(),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              GreyContainers(),
              SizedBox(height: 19,),
              FastDel(),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 19),
                child: Text(
                  'Самые популярные',
                  style: theme.textTheme.headline5,
                ),
              ),
              CardsBurger(),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  'Рекомендуем вам',
                  style:  theme.textTheme.headline5,
                ),
              ),
              Recomindation(),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 36, bottom: 16),
                child: Text(
                  'Все рестораны',
                  style:  theme.textTheme.headline5,
                ),
              ),
              ListOfRestaurantCard(),
            ],
          ),
        ],
      ),
    );
  }
}
