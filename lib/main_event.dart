

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeEvent extends Equatable{

  @override
  List<Object?> get props => [];
}

class ThemeChanged extends ThemeEvent{
   final ThemeMode darkMode;

  ThemeChanged({required this.darkMode});
  @override
  // TODO: implement props
  List<Object?> get props => [darkMode];
}