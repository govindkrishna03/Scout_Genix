import 'package:flutter/material.dart';
import 'package:scoutgenix_app/pages/login_page.dart';
import 'package:scoutgenix_app/pages/signup_page.dart';
import 'package:scoutgenix_app/pages/home_page.dart';
import 'package:scoutgenix_app/pages/profile_page.dart';
import 'package:scoutgenix_app/pages/player_list_page.dart';
import 'package:scoutgenix_app/pages/team_fit_page.dart';
import 'package:scoutgenix_app/pages/settings_page.dart';


void main() {
  runApp(const ScoutGenixApp());
}

class ScoutGenixApp extends StatefulWidget {
  const ScoutGenixApp({super.key});

  @override
  State<ScoutGenixApp> createState() => _ScoutGenixAppState();
}

class _ScoutGenixAppState extends State<ScoutGenixApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  void _toggleTheme() {
    setState(() {
      _themeMode =
      _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scout Genix',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(
          onToggleTheme: _toggleTheme,
        ),
        '/signup': (context) => SignupPage(
          onToggleTheme: _toggleTheme,
          isDarkMode: _themeMode == ThemeMode.dark,
        ),
        '/home': (context) => HomePage(),
        '/list': (context) => PlayerListPage(),
        '/teamfit': (context) => TeamFitPage(),
        '/settings': (context) => SettingsPage(),
      },

    );
  }
}
