

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 3,
        imageBackground: AssetImage('assets/file.png'),
        navigateAfterSeconds: HomeScreen(),
      ),
    ); // define it once at root level.
  }
}

  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {

      },
    );
  }

