
import 'package:delivery/main_bloc.dart';
import 'package:delivery/main_event.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main_state.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
             BlocBuilder<ThemeBloc, ThemeState>(
               builder: (context,state)=>SwitchListTile(
                       title: Text('Dark Theme', style: Theme.of(context).textTheme.bodyText1,),
                       value:  state.isDark,
                       onChanged: (bool value){
                         if(value){
                           bloc.add(ThemeChanged(darkMode: ThemeMode.dark));
                         } else {
                           bloc.add(ThemeChanged(darkMode: ThemeMode.light));
                         }
                       },),
             ),
          ],
        ),
      ),
    );
  }
}
