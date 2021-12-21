import 'package:flutter/material.dart';
import 'package:flutter_gettingstarted/screens/bmi_screen.dart';
import 'package:flutter_gettingstarted/screens/intro_screen.dart';
import 'package:flutter_gettingstarted/screens/sessions_screen.dart';
import 'package:flutter_gettingstarted/screens/weather_screen.dart';

void main(List<String> args) {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: const Center(child: Text("Hello World")),
    // );
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        "/": (context) => IntroScreen(),
        "/bmi": (context) => BmiScreen(),
        "/weather": (context) => WeatherScreen(),
        "/training": (context) => SessionsScreen(),
      },
    );
  }
}
