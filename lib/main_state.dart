
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class ThemeState extends Equatable{
    final ThemeMode themeMode;

  ThemeState({required this.themeMode});

  @override
  // TODO: implement props
  List<Object?> get props => [themeMode];
}