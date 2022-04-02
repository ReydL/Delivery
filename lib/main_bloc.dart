

import 'package:delivery/main_event.dart';
import 'package:delivery/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState>{
  ThemeBloc() : super(ThemeState(themeMode: ThemeMode.light)) {
    on<ThemeChanged>((event, emit) async{
      final ThemeMode themeMode;
      if(event.isDarkMode){
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.light;
      }
      emit(ThemeState(themeMode: themeMode));
    }
    );
  }

}