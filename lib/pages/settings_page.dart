import 'package:delivery/config/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
           Consumer<ThemeProvider>(
             builder: (context,themeProvider,child) => SwitchListTile(
               title: Text('Dark Theme', style: Theme.of(context).textTheme.bodyText1,),
               value: themeProvider.isDarkMode,
               onChanged: (bool value){
                 themeProvider.toggleTheme(value);
               },),
           )
          ],
        ),
      ),
    );
  }
}
