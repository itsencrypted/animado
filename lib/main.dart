import 'package:animado/screens/text_animations_screen.dart';
import 'package:animado/constants.dart';
import 'package:animado/screens/home_screen.dart';
import 'package:animado/screens/rive_animations_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppAnimado());
}

class AppAnimado extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        '/': (context) => HomeScreen(),
        '/text_animations': (context) => TextAnimationsScreen(),
        '/rive_animations': (context) => RiveAnimationsScreen
          (riveanimations['space']),
      },
    );
  }
}

