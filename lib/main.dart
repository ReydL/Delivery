import 'package:delivery/config/app_theme.dart';
import 'package:delivery/config/theme_provider.dart';
import 'package:delivery/main_bloc.dart';
import 'package:delivery/main_state.dart';
import 'package:delivery/presentation/features/settings/settings_page.dart';
import 'package:delivery/presentation/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'presentation/features/restaurant/restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => ThemeBloc(),
    child: BlocBuilder<ThemeBloc,ThemeState>(builder: (context, state) {
      return MaterialApp(
        themeMode: state.themeMode,
        theme: LightAppTheme.of(context),
        darkTheme: DarkAppTheme.of(context),
        routes: {
          '/': (context) => MyBottomNavigationBar(),

          '/settings': (context) => SettingsPage(),
        },
      );
    } ),);
  }

}
