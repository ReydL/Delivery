

import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 260,
      margin: EdgeInsets.only(
        left: 6,
        bottom: 6,
        right: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/restaurant');
        },
        child: Card(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 351,
                  height: 127,
                  margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/BKlogo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      'Burger King',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Американская кухня',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    trailing: Icon(Icons.attach_money),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 91,
                        height: 23,
                        margin: EdgeInsets.only(left: 12, right: 7),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '10-20 минут',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 136,
                        height: 23,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Доставка: 100 Р',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
