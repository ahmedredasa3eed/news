import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:news_app/screens/OnBoarding.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'chat_user.dart';
import 'utilities/theme.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool( 'seen' );
  Widget _screen;

  if(seen == null || seen == false)
    {
      _screen = OnBoarding();
    }
  else{
    _screen = HomeScreen();
  }

  runApp( NewsApp(_screen) );
}

class NewsApp extends StatelessWidget {

  final Widget _screen;

  NewsApp(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      //home: this._screen,
      home: OnBoarding(),
    );
  }
}


