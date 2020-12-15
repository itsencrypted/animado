// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:animado/components/dharma_button.dart';
import 'package:animado/screens/menu1_screen.dart';
import 'package:animado/screens/rive_animations_screen.dart';
import 'package:animado/screens/text_animations_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(height:50),
              DharmaButton(onPressed: ()=> Navigator.pushNamed(context,
                  '/rive_animations'), titleOfButton: 'RIVE ANIMATIONS',),
              SizedBox(height:50),
              DharmaButton(onPressed: ()=> Navigator.pushNamed(context,
                  TextAnimationsScreen.id), titleOfButton: 'TEXT ANIMATIONS',),
              SizedBox(height: 30,),
              DharmaButton(onPressed: ()=> Navigator.pushNamed(context,
                  Menu1Screen.id), titleOfButton: 'Menu1',),
            ],
          )
        ],
      ),
    );
  }
}
