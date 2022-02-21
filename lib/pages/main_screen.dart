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
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  TopRow(),
                  GreyContainers(),
                  FastDel(),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 19),
                    child: Text(
                      'Самые популярные',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CardsBurger(),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 32),
                    child: Text(
                      'Рекомендуем вам',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Recomindation(),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 36, bottom: 16),
                    child: Text(
                      'Все рестораны',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RestaurantCard(),
                  RestaurantCard(),
                  RestaurantCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
