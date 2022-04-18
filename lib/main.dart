import 'package:delivery/config/app_theme.dart';
import 'package:delivery/data/repositories/cart_repository.dart';
import 'package:delivery/main_bloc.dart';
import 'package:delivery/main_state.dart';
import 'package:delivery/presentation/features/cart/cart_bloc.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:delivery/presentation/features/navigation/navigation_cubit.dart';
import 'package:delivery/presentation/features/profile/profile_bloc.dart';
import 'package:delivery/presentation/features/settings/settings_page.dart';
import 'package:delivery/presentation/features/navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CartRepository(),),
      ] ,
      child: MultiBlocProvider(
          providers:[
            BlocProvider(create: (context)=>CartBloc(cartRepository: context.read<CartRepository>())..add(CartLoadedEvent())),
            BlocProvider(create: (context)=> ThemeBloc()),
            BlocProvider(create: (context)=> NavigationCubit()),
            BlocProvider(create: (context)=> ProfileBloc())
          ],
        child: BlocBuilder<ThemeBloc,ThemeState>(builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: LightAppTheme.of(context),
            darkTheme: DarkAppTheme.of(context),
            routes: {
              '/': (context) => const MyBottomNavigationBar(),

              '/settings': (context) => const SettingsPage(),
            },
          );
        } ),)
      
    );
  }

}
