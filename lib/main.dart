import 'package:animado/components/txt_colorful_animation.dart';
import 'package:animado/components/txt_flashy_animation.dart';
import 'package:animado/components/txt_liquid_animation.dart';
import 'package:animado/components/txt_signature_animation.dart';
import 'package:animado/components/txt_typewriter_animation.dart';
import 'package:animado/screens/home_screen.dart';
import 'package:animado/screens/menu1_screen.dart';
import 'package:animado/screens/rive_animations_screen.dart';
import 'package:animado/screens/text_animations_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


void main() {
  runApp(AppAnimado());
}

class AppAnimado extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/text_animations': (context) => TextAnimationsScreen(),
        '/menu1': (context) => Menu1Screen(),
        '/text_animations/colorful': (context) => ColorfulText(),
        '/text_animations/flashy': (context) => FlashyText(),
        '/text_animations/liquid': (context) => LiquidText(),
        '/text_animations/signature': (context) => SignatureText(),
        '/text_animations/typewriter': (context) => TypewriterText(),
        '/rive_animations': (context) => RiveAnimationsScreen
          (riveanimations['rocket']),
      },
    );
  }
}

