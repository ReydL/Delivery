import 'package:flutter/material.dart';

class RestaurantHead extends StatelessWidget {
  const RestaurantHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 375,
      child: Stack(
        children: [
          Container(
            height: 105,
            width: 375,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Rectangle.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: 144,
            right: 144,
            child: Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(

                shape: BoxShape.circle,
                image: DecorationImage(

                  image: AssetImage('assets/images/BigBKlogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
