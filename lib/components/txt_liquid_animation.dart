import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LiquidText extends StatefulWidget {
  static const String id = '/text_animations/liquid';

  @override
  _LiquidTextState createState() => _LiquidTextState();
}

class _LiquidTextState extends State<LiquidText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SizedBox(
          width: 400,
          child: TextLiquidFill(
            text: 'Beba Água!!',
            waveColor: Colors.lightBlueAccent,
            boxBackgroundColor: Colors.indigo,
            textStyle: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 120.0,
          ),
        ),
      ),
    );
  }
}
