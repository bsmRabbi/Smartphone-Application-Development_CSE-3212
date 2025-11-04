import 'package:flutter/material.dart';
import 'package:flutter_demo_homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 2, 2, 48),
        primaryColor: Color(0xFF00C6FF),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 2, 25, 89),
          titleTextStyle: TextStyle(
            color: Color(0xFF00F0FF),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          iconTheme: IconThemeData(color: Color(0xFF00F0FF)),
        ),
        drawerTheme: DrawerThemeData(backgroundColor: Color(0xFF181825)),
        iconTheme: IconThemeData(color: Color(0xFF00C6FF)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF350077),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}
