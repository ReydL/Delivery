
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class ThemeState extends Equatable{
    final bool isDark;
    final ThemeMode themeMode;

  const ThemeState({required this.isDark, required this.themeMode});

  @override
  // TODO: implement props
  List<Object?> get props => [isDark,themeMode];
}