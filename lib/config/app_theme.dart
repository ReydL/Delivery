import 'package:flutter/material.dart';

class LightAppTheme{
  static ThemeData of(context){
    var theme = Theme.of(context);
    return theme.copyWith(

      primaryColor: Colors.orange,
      backgroundColor: Colors.white,
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
      textTheme: theme.textTheme.copyWith(
        headline5: theme.textTheme.headline5!.copyWith(
          color: Colors.black,
          fontSize: 26,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: theme.textTheme.bodyText1!.copyWith(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        subtitle1: theme.textTheme.subtitle1!.copyWith(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class DarkAppTheme{
  static ThemeData of(context){
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: Colors.deepOrangeAccent,
      backgroundColor: Colors.grey.shade900,
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.grey.shade700,
      ),
      textTheme: theme.textTheme.copyWith(
        headline5: theme.textTheme.headline5!.copyWith(
          color: Colors.white,
          fontSize: 26,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: theme.textTheme.bodyText1!.copyWith(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        subtitle1: theme.textTheme.subtitle1!.copyWith(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}


