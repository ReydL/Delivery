

import 'package:delivery/main_event.dart';
import 'package:delivery/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState>{
  ThemeBloc() : super(ThemeState(isDark: false, themeMode: ThemeMode.light)) {
    on<ThemeChanged>((event, emit) async{

      if(event.darkMode == ThemeMode.dark){
        const  themeMode = ThemeMode.dark;
        emit(ThemeState(isDark: true, themeMode: themeMode));
      } else {
        const  themeMode = ThemeMode.light;
        emit(ThemeState(isDark: false, themeMode: themeMode));
      }

    }
    );
  }

}