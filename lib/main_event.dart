

import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable{

  @override
  List<Object?> get props => [];
}

class ThemeChanged extends ThemeEvent{
   final bool isDarkMode;

  ThemeChanged({required this.isDarkMode});
  @override
  // TODO: implement props
  List<Object?> get props => [isDarkMode];
}