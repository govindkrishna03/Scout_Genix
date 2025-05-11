import 'package:flutter/material.dart';
import 'package:scoutgenix_app/pages/login_page.dart';  
import 'package:scoutgenix_app/pages/signup_page.dart';
import 'package:scoutgenix_app/pages/home_page.dart';
import 'package:scoutgenix_app/pages/player_list_page.dart';
import 'package:scoutgenix_app/pages/team_fit_page.dart';
import 'package:scoutgenix_app/pages/settings_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginPage(),
      '/signup': (context) => SignupPage(),
      '/home': (context) => HomePage(),
      '/list': (context) => PlayerListPage(),
      '/teamfit': (context) => TeamFitPage(),
      '/settings': (context) => SettingsPage(),
    },
  ));
}
