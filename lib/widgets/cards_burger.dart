import 'package:flutter/material.dart';

class CardsBurger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Description(),
          Description(),
          Description(),
          Description(),

        ],)
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 230,
      margin: EdgeInsets.only(
        left: 6,
        top: 8,
        right: 7,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 303,
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
            ],
          ),
        ),
      ),
    );
  }
}
