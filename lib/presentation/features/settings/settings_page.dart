
import 'package:delivery/main_bloc.dart';
import 'package:delivery/main_event.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

             SwitchListTile(
                     title: Text('Dark Theme', style: Theme.of(context).textTheme.bodyText1,),
                     value:  false,
                     onChanged: (bool value){
                       BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(isDarkMode: value));
                     },),


          ],
        ),
      ),
    );
  }
}
